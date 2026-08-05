`timescale 1ns / 1ps

module tb_CNN_400_imge;

	localparam int IMG_WIDTH  = 128;
	localparam int IMG_HEIGHT = 128;
	localparam int IMG_PIXELS = IMG_WIDTH * IMG_HEIGHT;

	localparam int PERSON_COUNT    = 200;
	localparam int NONPERSON_COUNT = 200;
	localparam int TOTAL_CASES     = PERSON_COUNT + NONPERSON_COUNT;
	localparam int TIMEOUT_CYCLES  = 12000000;

	// 실행 위치가 달라도 동작하도록 mem 경로 후보를 순차 시도한다.
	localparam string MEM_BASE_DIR_0 = "../mem_out";
	localparam string MEM_BASE_DIR_1 = "./mem_out";
	localparam string MEM_BASE_DIR_2 = "./testbench/test_image";

	logic clk;
	logic rst_n;
	logic start;
	logic done;
	logic busy;
	logic result;

	logic [$clog2(IMG_PIXELS)-1:0] img_raddr;
	logic signed [7:0] img_rdata;
	logic signed [7:0] img_mem [0:IMG_PIXELS-1];

	int err_count;
	int pass_count;
	int fail_count;
	int person_pass_count;
	int person_fail_count;
	int nonperson_pass_count;
	int nonperson_fail_count;
	int total_done_count;
	int case_seq;
	int eval_case_count;
	int eval_person_count;
	int eval_nonperson_count;
	real person_pass_percent;
	real nonperson_pass_percent;
	integer case_score_s8 [0:TOTAL_CASES-1];
	bit case_expected_person [0:TOTAL_CASES-1];

	CNN_accelerator dut (
		.sysclk   (clk),
		.rst_n    (rst_n),
		.start    (start),
		.done     (done),
		.busy     (busy),
		.result   (result),
		.img_raddr(img_raddr),
		.img_rdata(img_rdata)
	);

	// 125 MHz clock (8 ns period)
	always #4 clk = ~clk;

	// BRAM-like synchronous image read: data returns one cycle after address.
	always_ff @(posedge clk) begin
		img_rdata <= img_mem[img_raddr];
	end

	task automatic clear_image_mem;
		int i;
		begin
			for (i = 0; i < IMG_PIXELS; i = i + 1) begin
				img_mem[i] = '0;
			end
		end
	endtask

	task automatic load_image_mem(input string mem_path, output bit load_ok);
		int fd;
		int code;
		int i;
		int pixel_val;
		begin
			load_ok = 1'b0;
			$display("[TB] loading image memory: %s", mem_path);

			fd = $fopen(mem_path, "r");
			if (fd == 0) begin
				err_count = err_count + 1;
				fail_count = fail_count + 1;
				$display("[FAIL] cannot open image memory file: %s", mem_path);
			end else begin
				// test_image/*.mem 파일은 128x128 전체 픽셀(16384줄)을 담고 있어
				// 케이스마다 전체 clear 없이 바로 덮어써도 안전하다.
				for (i = 0; i < IMG_PIXELS; i = i + 1) begin
					code = $fscanf(fd, "%d\n", pixel_val);
					if (code == 1)
						img_mem[i] = pixel_val[7:0];
					else
						break;
				end
				$fclose(fd);
				load_ok = 1'b1;
			end
		end
	endtask

	task automatic pulse_start;
		begin
			@(posedge clk);
			start <= 1'b1;
			@(posedge clk);
			start <= 1'b0;
		end
	endtask

	task automatic wait_done(input int timeout_cycles, output bit done_ok);
		int cycle_count;
		begin
			cycle_count = 0;
			done_ok = 1'b0;

			while ((done !== 1'b1) && (cycle_count < timeout_cycles)) begin
				@(posedge clk);
				cycle_count = cycle_count + 1;
			end

			if (done !== 1'b1) begin
				err_count = err_count + 1;
				fail_count = fail_count + 1;
				$display("[FAIL] timeout waiting for done after %0d cycles", timeout_cycles);
			end else begin
				done_ok = 1'b1;
				total_done_count = total_done_count + 1;
				$display("[TB] done asserted after %0d cycles", cycle_count);
			end
		end
	endtask

	task automatic run_case(
		input string mem_path,
		input logic expected_result
	);
		bit load_ok;
		bit done_ok;
		int signed score_s8;
		string pred_label;
		string exp_label;
		begin
			case_seq = case_seq + 1;
			exp_label = (expected_result == 1'b1) ? "person" : "nonperson";

			load_image_mem(mem_path, load_ok);
			if (!load_ok)
				return;

			pulse_start();
			wait_done(TIMEOUT_CYCLES, done_ok);
			if (!done_ok)
				return;

			// FC 최종 score를 저장해 threshold sweep에서 재사용한다.
			score_s8 = $signed(dut.U_FC.u_fc_core.quantized_result_s8);
			case_score_s8[eval_case_count] = score_s8;
			case_expected_person[eval_case_count] = expected_result;
			eval_case_count = eval_case_count + 1;
			if (expected_result)
				eval_person_count = eval_person_count + 1;
			else
				eval_nonperson_count = eval_nonperson_count + 1;

			pred_label = (result == 1'b1) ? "person" : "nonperson";

			if (result !== expected_result) begin
				err_count = err_count + 1;
				fail_count = fail_count + 1;
				if (expected_result)
					person_fail_count = person_fail_count + 1;
				else
					nonperson_fail_count = nonperson_fail_count + 1;
				$display("[FAIL][%0d/%0d] %s | pred=%s exp=%s", case_seq, TOTAL_CASES, mem_path, pred_label, exp_label);
			end else begin
				pass_count = pass_count + 1;
				if (expected_result)
					person_pass_count = person_pass_count + 1;
				else
					nonperson_pass_count = nonperson_pass_count + 1;
				$display("[PASS][%0d/%0d] %s | pred=%s exp=%s", case_seq, TOTAL_CASES, mem_path, pred_label, exp_label);
			end

			// done pulse가 내려간 뒤 다음 케이스를 시작한다.
			@(posedge clk);
		end
	endtask

	task automatic report_threshold_sweep;
		int th;
		int idx;
		int tp;
		int tn;
		int fp;
		int fn;
		int best_th;
		int best_tp;
		int best_tn;
		int best_fp;
		int best_fn;
		int best_correct;
		real person_rate;
		real nonperson_rate;
		real balanced_acc;
		real best_balanced_acc;
		real best_person_rate;
		real best_nonperson_rate;
		real overall_acc;
		real best_overall_acc;
		bit expected_person;
		bit pred_person;
		begin
			if ((eval_case_count == 0)
				|| (eval_person_count == 0)
				|| (eval_nonperson_count == 0)) begin
				$display("[TB][SWEEP] skipped: insufficient evaluated cases (total=%0d person=%0d nonperson=%0d)",
					eval_case_count, eval_person_count, eval_nonperson_count);
				return;
			end

			best_th = 0;
			best_tp = 0;
			best_tn = 0;
			best_fp = 0;
			best_fn = 0;
			best_correct = -1;
			best_balanced_acc = -1.0;
			best_person_rate = 0.0;
			best_nonperson_rate = 0.0;
			best_overall_acc = 0.0;

			for (th = -128; th <= 127; th = th + 1) begin
				tp = 0;
				tn = 0;
				fp = 0;
				fn = 0;

				for (idx = 0; idx < eval_case_count; idx = idx + 1) begin
					expected_person = case_expected_person[idx];
					pred_person = ($signed(case_score_s8[idx]) >= th);

					if (expected_person) begin
						if (pred_person)
							tp = tp + 1;
						else
							fn = fn + 1;
					end else begin
						if (pred_person)
							fp = fp + 1;
						else
							tn = tn + 1;
					end
				end

				person_rate = (100.0 * tp) / eval_person_count;
				nonperson_rate = (100.0 * tn) / eval_nonperson_count;
				balanced_acc = (person_rate + nonperson_rate) / 2.0;
				overall_acc = (100.0 * (tp + tn)) / eval_case_count;

				if ((balanced_acc > best_balanced_acc)
					|| ((balanced_acc == best_balanced_acc)
						&& ((tp + tn) > best_correct))
					|| ((balanced_acc == best_balanced_acc)
						&& ((tp + tn) == best_correct)
						&& ((th < best_th)))) begin
					best_th = th;
					best_tp = tp;
					best_tn = tn;
					best_fp = fp;
					best_fn = fn;
					best_correct = tp + tn;
					best_balanced_acc = balanced_acc;
					best_person_rate = person_rate;
					best_nonperson_rate = nonperson_rate;
					best_overall_acc = overall_acc;
				end
			end

			$display("\n[TB][SWEEP] threshold optimization over %0d cases", eval_case_count);
			$display("[TB][SWEEP] best_threshold_s8=%0d", best_th);
			$display("[TB][SWEEP] person_rate=%0.2f%% nonperson_rate=%0.2f%% balanced_acc=%0.2f%% overall_acc=%0.2f%%",
				best_person_rate, best_nonperson_rate, best_balanced_acc, best_overall_acc);
			$display("[TB][SWEEP] confusion: TP=%0d FN=%0d TN=%0d FP=%0d",
				best_tp, best_fn, best_tn, best_fp);
		end
	endtask

	task automatic run_group(input string cls_name, input int count, input logic expected_result);
		int idx;
		int fd;
		string mem_path;
		string cand0;
		string cand1;
		string cand2;
		begin
			for (idx = 0; idx < count; idx = idx + 1) begin
				cand0 = $sformatf("%s/%s%0d.mem", MEM_BASE_DIR_0, cls_name, idx);
				cand1 = $sformatf("%s/%s%0d.mem", MEM_BASE_DIR_1, cls_name, idx);
				cand2 = $sformatf("%s/%s%0d.mem", MEM_BASE_DIR_2, cls_name, idx);

				mem_path = cand0;
				fd = $fopen(cand0, "r");
				if (fd != 0) begin
					$fclose(fd);
				end else begin
					fd = $fopen(cand1, "r");
					if (fd != 0) begin
						mem_path = cand1;
						$fclose(fd);
					end else begin
						fd = $fopen(cand2, "r");
						if (fd != 0) begin
							mem_path = cand2;
							$fclose(fd);
						end
					end
				end

				run_case(mem_path, expected_result);
			end
		end
	endtask

	initial begin
		clk = 1'b0;
		rst_n = 1'b0;
		start = 1'b0;
		err_count = 0;
		pass_count = 0;
		fail_count = 0;
		person_pass_count = 0;
		person_fail_count = 0;
		nonperson_pass_count = 0;
		nonperson_fail_count = 0;
		total_done_count = 0;
		case_seq = 0;
		eval_case_count = 0;
		eval_person_count = 0;
		eval_nonperson_count = 0;

		clear_image_mem();

		repeat (8) @(posedge clk);
		rst_n = 1'b1;
		repeat (4) @(posedge clk);

		$display("[TB] start full regression: %0d images", TOTAL_CASES);
		$display("[TB] mem base candidates = %s | %s | %s", MEM_BASE_DIR_0, MEM_BASE_DIR_1, MEM_BASE_DIR_2);
		$display("[TB] clock = 125MHz (8ns)");

		run_group("person", PERSON_COUNT, 1'b1);
		run_group("nonperson", NONPERSON_COUNT, 1'b0);

		$display("\n[TB] SUMMARY");
		$display("[TB] total_done_count=%0d", total_done_count);
		$display("[TB] pass_count=%0d", pass_count);
		$display("[TB] fail_count=%0d", fail_count);
		$display("[TB] err_count=%0d", err_count);
		person_pass_percent = (100.0 * person_pass_count) / PERSON_COUNT;
		nonperson_pass_percent = (100.0 * nonperson_pass_count) / NONPERSON_COUNT;
		$display("[TB] person: pass=%0d/%0d fail=%0d pass_rate=%0.2f%%",
			person_pass_count, PERSON_COUNT, person_fail_count, person_pass_percent);
		$display("[TB] nonperson: pass=%0d/%0d fail=%0d pass_rate=%0.2f%%",
			nonperson_pass_count, NONPERSON_COUNT, nonperson_fail_count,
			nonperson_pass_percent);

		report_threshold_sweep();

		if ((err_count == 0) && (pass_count == TOTAL_CASES))
			$display("\nALL TESTS PASSED (%0d cases)", TOTAL_CASES);
		else
			$display("\nTEST FAILED (pass=%0d fail=%0d err=%0d)", pass_count, fail_count, err_count);

		$finish;
	end

endmodule
