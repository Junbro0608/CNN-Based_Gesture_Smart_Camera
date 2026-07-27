코드가 잘려서 보이셨군요. 바로 복사하실 수 있도록 전체 마크다운 코드를 아래 코드 블록에 다시 작성해 드립니다. 우측 상단의 '복사' 버튼을 누르시면 한 번에 복사하실 수 있습니다.

Markdown
# 🛠️ Zybo Z7-20 Vivado Setup Guide

이 가이드는 Xilinx Vivado 환경에서 **Digilent Zybo Z7-20** 보드를 인식시키고, 포트 매핑을 위한 XDC 제약 조건(Constraints) 파일을 프로젝트에 적용하는 방법을 설명합니다.

## 📌 목차
1. [보드 파일(Board Files) 설치](#1-보드-파일board-files-설치)
2. [XDC(제약 조건) 파일 적용](#2-xdc제약-조건-파일-적용)
3. [XDC 파일 사용 주의사항](#3-xdc-파일-사용-주의사항)

---

## 1. 보드 파일(Board Files) 설치

Vivado에서 프로젝트를 생성할 때 `Zybo Z7-20` 보드를 목록에서 선택하려면, 제조사(Digilent)에서 제공하는 보드 파일을 Vivado 설치 경로에 수동으로 추가해야 합니다.

### 📥 다운로드 및 설치 방법
1. **GitHub 저장소 접속**: [Digilent vivado-boards GitHub](https://github.com/Digilent/vivado-boards)에 접속합니다.
2. **전체 파일 다운로드**: 우측 상단의 `<> Code` 버튼을 클릭하고 **Download ZIP**을 선택하여 압축 파일을 받습니다.
3. **압축 해제 및 폴더 복사**: 
   * 다운로드한 파일의 압축을 해제합니다.
   * `new/board_files` 경로로 이동합니다.
   * 해당 폴더 안에 있는 **`zybo-z7-20`** 폴더 전체를 복사합니다.
4. **Vivado 경로에 붙여넣기**:
   * 복사한 폴더를 PC의 Vivado 보드 파일 경로에 붙여넣습니다.
   * 📁 **기본 경로 예시**: `C:\Xilinx\Vivado\<버전>\data\boards\board_parts\zynq`
     *(※ 버전에 따라 `data\boards\board_parts` 내부에 바로 넣어야 할 수도 있습니다.)*
5. **적용 확인**: Vivado를 재시작한 후, 새 프로젝트를 생성할 때 `Boards` 탭에서 `Zybo Z7-20`이 정상적으로 검색되는지 확인합니다.

---

## 2. XDC(제약 조건) 파일 적용

작성한 하드웨어 설계 코드(Verilog/VHDL)의 입출력 포트를 Zybo Z7 보드의 실제 물리적인 핀(LED, 스위치 등)과 연결해 주는 파일입니다.

### 📥 다운로드 및 프로젝트 추가 방법
1. **GitHub 저장소 접속**: [Digilent digilent-xdc GitHub](https://github.com/Digilent/digilent-xdc)에 접속합니다.
2. **Master XDC 파일 다운로드**: 
   * 목록에서 **`Zybo-Z7-Master.xdc`** 파일을 찾아 클릭합니다.
   * 파일 내용을 전체 복사하거나 RAW 파일로 다운로드합니다.
3. **Vivado 프로젝트에 추가**:
   * Vivado 좌측 `Flow Navigator` 메뉴에서 **`Add Sources`**를 클릭합니다.
   * **`Add or create constraints`**를 선택하고 `Next`를 클릭합니다.
   * 다운로드한 파일을 `Add Files`로 불러오거나, `Create File`을 눌러 새 파일을 만든 뒤 복사한 코드를 붙여넣습니다.
   * `Finish`를 눌러 완료합니다.

---

## 3. XDC 파일 사용 주의사항

추가한 `Zybo-Z7-Master.xdc` 파일을 열어보면 모든 코드가 `#`(주석) 처리되어 비활성화되어 있습니다. 정상적인 컴파일을 위해 다음 과정을 반드시 수행해야 합니다.

* **주석 해제**: 프로젝트에서 사용할 하드웨어 핀(예: 클럭, 스위치, LED 등)에 해당하는 줄의 맨 앞 `#` 기호를 지워 활성화합니다.
* **포트 이름 일치**: `get_ports { ... }` 괄호 안에 있는 이름을 본인이 작성한 Top-level 모듈의 포트 이름과 **정확히 동일하게** 수정해야 합니다.

**[예시: LED 0번을 활성화할 경우]**
```xdc
# 수정 전 (주석 상태)
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L23P_T3_35 Sch=led[0]

# 수정 후 (주석 해제 및 포트 이름 'LED_OUT'으로 변경 시)
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { LED_OUT }]; #IO_L23P_T