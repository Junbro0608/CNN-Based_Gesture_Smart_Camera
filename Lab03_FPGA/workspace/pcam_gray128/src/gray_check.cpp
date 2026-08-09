/*============================================================
 * gray_check.cpp
 *
 * VDMA1 초기화 + 128x128 grayscale 버퍼 검증 코드.
 *
 * 데모의 main.cpp 가 C++ 이므로 이 파일도 .cpp 로 둡니다.
 * (.c 로 두면 링크 단계에서 함수를 찾지 못합니다)
 *
 * 데모의 화면 출력 구조를 전혀 건드리지 않으므로 안전하게
 * 붙였다 뗄 수 있습니다. 검증이 끝나면 그대로 두어도 되고
 * 제거해도 됩니다.
 *
 * 통합 방법 (main.cpp 3곳 수정):
 *  1) include 아래에 프로토타입 3줄 추가
 *  2) "Video init done." 출력 직후에 GrayPathInit() 호출
 *  3) 메뉴 안내문과 switch 문에 'i' 와 'p' case 추가
 *
 * 전제 조건:
 *  ds_128.v 의 파라미터가 실제 동작 해상도와 일치해야 합니다.
 *  기본값은 720p 기준이므로 main() 의 첫 pipeline_mode_change 를
 *  R1280_720_60_PP / MODE_720P_1280_720_60fps 로 바꾸십시오.
 *============================================================*/

#include "xaxivdma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include <string.h>

/* [확인] xparameters.h 에서 실제 매크로 이름을 확인하십시오.
 * 블록 디자인의 인스턴스 이름이 axi_vdma_1 이면 보통 아래가 맞습니다.
 * Vitis 편집기에서 XPAR_AXI 까지 치고 Ctrl+Space 를 누르면 목록이 뜹니다. */
#define GRAY_VDMA_ID    XPAR_AXIVDMA_1_DEVICE_ID

#define GRAY_W   128
#define GRAY_H   128
#define GRAY_SZ  (GRAY_W * GRAY_H)   /* 16384 바이트 */

/* CNN 가속기가 나중에 읽어갈 수도 있는 버퍼.
 * Cortex-A9 캐시 라인이 32바이트이므로 64바이트 정렬을 주어
 * 캐시 무효화가 인접 데이터를 건드리지 않도록 합니다.
 * 크기 16384 도 64의 배수라 안전합니다. */
static u8 grayBuf[GRAY_SZ] __attribute__((aligned(64)));

static XAxiVdma vdmaGray;
static int grayReady = 0;

/*------------------------------------------------------------
 * VDMA1 초기화
 * S2MM(쓰기) 채널만 사용하고, 프레임 1장을 계속 덮어쓰며
 * 항상 최신 프레임이 grayBuf 에 남도록 합니다.
 *------------------------------------------------------------*/
int GrayPathInit(void)
{
    XAxiVdma_Config *cfg;
    XAxiVdma_DmaSetup wcfg;
    UINTPTR addr;
    int st;

    memset(grayBuf, 0, sizeof(grayBuf));
    Xil_DCacheFlushRange((UINTPTR)grayBuf, sizeof(grayBuf));

    cfg = XAxiVdma_LookupConfig(GRAY_VDMA_ID);
    if (cfg == NULL) {
        xil_printf("GrayPathInit: LookupConfig failed\r\n");
        return XST_FAILURE;
    }

    st = XAxiVdma_CfgInitialize(&vdmaGray, cfg, cfg->BaseAddress);
    if (st != XST_SUCCESS) {
        xil_printf("GrayPathInit: CfgInitialize failed (%d)\r\n", st);
        return st;
    }

    memset(&wcfg, 0, sizeof(wcfg));
    wcfg.VertSizeInput       = GRAY_H;   /* 128 라인 */
    wcfg.HoriSizeInput       = GRAY_W;   /* 라인당 128 바이트 (8bpp) */
    wcfg.Stride              = GRAY_W;   /* 라인 간격도 128, 빈틈 없음 */
    wcfg.FrameDelay          = 0;
    wcfg.EnableCircularBuf   = 1;        /* 계속 순환하며 덮어쓰기 */
    wcfg.EnableFrameCounter  = 0;
    wcfg.FixedFrameStoreAddr = 0;

    st = XAxiVdma_DmaConfig(&vdmaGray, XAXIVDMA_WRITE, &wcfg);
    if (st != XST_SUCCESS) {
        xil_printf("GrayPathInit: DmaConfig failed (%d)\r\n", st);
        return st;
    }

    /* VDMA1 IP 설정에서 Frame Buffers = 1 로 했으므로 주소 1개만 등록 */
    addr = (UINTPTR)grayBuf;
    st = XAxiVdma_DmaSetBufferAddr(&vdmaGray, XAXIVDMA_WRITE, &addr);
    if (st != XST_SUCCESS) {
        xil_printf("GrayPathInit: SetBufferAddr failed (%d)\r\n", st);
        return st;
    }

    st = XAxiVdma_DmaStart(&vdmaGray, XAXIVDMA_WRITE);
    if (st != XST_SUCCESS) {
        xil_printf("GrayPathInit: DmaStart failed (%d)\r\n", st);
        return st;
    }

    grayReady = 1;
    xil_printf("GrayPathInit: OK.  grayBuf @ 0x%08X, size %d\r\n",
               (unsigned int)(UINTPTR)grayBuf, GRAY_SZ);
    return XST_SUCCESS;
}

/*------------------------------------------------------------
 * 가장 먼저 해볼 검사.
 * 최소값, 최대값, 평균과 샘플 픽셀 몇 개를 출력합니다.
 *
 * 판정 기준:
 *  - min 과 max 가 모두 0  -> VDMA 가 전혀 쓰지 않고 있음 (하드웨어 문제)
 *  - min == max (0 이 아님) -> 단색으로만 채워짐 (스트림 문제)
 *  - 손을 흔들며 두 번 실행했을 때 값이 변함 -> 정상
 *------------------------------------------------------------*/
void GrayPrintStats(void)
{
    u32 i, sum = 0;
    u8  vmin = 255, vmax = 0;

    if (!grayReady) { xil_printf("gray path not initialised\r\n"); return; }

    /* VDMA 가 DDR 에 직접 쓴 내용이므로 캐시를 무효화해야 최신 값이 보임 */
    Xil_DCacheInvalidateRange((UINTPTR)grayBuf, sizeof(grayBuf));

    for (i = 0; i < GRAY_SZ; i++) {
        u8 v = grayBuf[i];
        if (v < vmin) vmin = v;
        if (v > vmax) vmax = v;
        sum += v;
    }

    xil_printf("gray: min=%3d max=%3d avg=%3d | first bytes:",
               vmin, vmax, (int)(sum / GRAY_SZ));
    for (i = 0; i < 8; i++) xil_printf(" %02X", grayBuf[i]);
    xil_printf("\r\n");
}

/*------------------------------------------------------------
 * 128x128 버퍼를 64x32 ASCII 아트로 터미널에 출력합니다.
 * 가로는 2픽셀마다, 세로는 4라인마다 샘플링합니다.
 * (터미널 글자가 가로보다 세로로 길어서 비율을 맞춘 것입니다)
 *
 * 카메라 앞에서 손을 움직이면 형태가 그대로 보입니다.
 *------------------------------------------------------------*/
void GrayPrintAscii(void)
{
    static const char ramp[] = " .:-=+*#%@";   /* 어두움 -> 밝음, 10단계 */
    char line[65];
    int x, y, i;

    if (!grayReady) { xil_printf("gray path not initialised\r\n"); return; }

    Xil_DCacheInvalidateRange((UINTPTR)grayBuf, sizeof(grayBuf));

    xil_printf("\r\n+----------------------------------------------------------------+\r\n");
    for (y = 0; y < GRAY_H; y += 4) {
        for (x = 0, i = 0; x < GRAY_W; x += 2, i++) {
            u8 v = grayBuf[y * GRAY_W + x];
            line[i] = ramp[(v * 9) / 255];     /* 0..255 -> 0..9 */
        }
        line[i] = '\0';
        xil_printf("|%s|\r\n", line);
    }
    xil_printf("+----------------------------------------------------------------+\r\n");
}

void GrayPrintVdma(void)
{
    if (!grayReady) { xil_printf("gray path not initialised\r\n"); return; }

    u32 sr = XAxiVdma_GetStatus(&vdmaGray, XAXIVDMA_WRITE);
    xil_printf("VDMA1 S2MM SR=0x%08X  Busy=%d\r\n",
               (unsigned int)sr,
               (int)XAxiVdma_IsBusy(&vdmaGray, XAXIVDMA_WRITE));

    if (sr & XAXIVDMA_SR_HALTED_MASK)      xil_printf("  -> HALTED\r\n");
    if (sr & XAXIVDMA_SR_ERR_INTERNAL_MASK) xil_printf("  -> internal error\r\n");
    if (sr & XAXIVDMA_SR_ERR_SLAVE_MASK)    xil_printf("  -> slave error\r\n");
    if (sr & XAXIVDMA_SR_ERR_DECODE_MASK)   xil_printf("  -> decode error\r\n");
}

/*------------------------------------------------------------
 * CNN 연동 준비용.
 * 최신 프레임의 시작 주소를 돌려줍니다.
 * 호출 측에서 읽기 전에 캐시를 무효화해 두었습니다.
 *------------------------------------------------------------*/
const u8 *GrayGetFrame(void)
{
    if (!grayReady) return 0;
    Xil_DCacheInvalidateRange((UINTPTR)grayBuf, sizeof(grayBuf));
    return grayBuf;
}
