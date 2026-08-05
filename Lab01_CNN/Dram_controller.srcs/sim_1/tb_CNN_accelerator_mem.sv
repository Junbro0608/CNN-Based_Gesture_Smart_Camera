`timescale 1ns / 1ps

module tb_CNN_accelerator_mem;

	localparam int IMG_WIDTH  = 128;
	localparam int IMG_HEIGHT = 128;
	localparam int IMG_PIXELS = IMG_WIDTH * IMG_HEIGHT;
	localparam int PERSON_COUNT = 1;
	localparam int NONPERSON_COUNT = 1;
	localparam int TOTAL_CASES = PERSON_COUNT + NONPERSON_COUNT;
	localparam int TIMEOUT_CYCLES = 12000000;
	localparam string MEM_BASE_DIR = "D:/git_clone/CNN-Based_Gesture_Smart_Camera/Lab02_CNN_400_image_test/testbench/test_image";
	localparam bit ENABLE_CONSOLE_LOG = 1'b1;
	localparam bit ENABLE_FILE_LOG = 1'b0;

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
	int log_fd;
	int fail_log_fd;
	logic signed [31:0] decision_score_s32;
	logic decision_score_valid;
	logic decision_result_bit;

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

	always #4 clk = ~clk;

	// BRAM-like synchronous image read: data returns one cycle after address.
	always_ff @(posedge clk) begin
		img_rdata <= img_mem[img_raddr];
	end

	// Capture the exact score used at FC decision timing.
	always_ff @(posedge clk) begin
		if (!rst_n) begin
			decision_score_s32 <= '0;
			decision_score_valid <= 1'b0;
			decision_result_bit <= 1'b0;
		end else begin
			if (dut.U_FC.u_fc_core.start_accept)
				decision_score_valid <= 1'b0;
			if (dut.U_FC.u_fc_core.result_capture_en) begin
				decision_score_s32 <= dut.U_FC.u_fc_core.buffered_accumulator_0_s32;
				decision_result_bit <= ($signed(dut.U_FC.u_fc_core.buffered_accumulator_0_s32) >= 0);
				decision_score_valid <= 1'b1;
			end
		end
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
			clear_image_mem();
			if (ENABLE_CONSOLE_LOG) $display("[TB] loading image memory: %s", mem_path);

			fd = $fopen(mem_path, "r");
			if (fd == 0) begin
				err_count = err_count + 1;
				fail_count = fail_count + 1;
				if (ENABLE_CONSOLE_LOG) $display("[FAIL] cannot open image memory file: %s", mem_path);
			end else begin
				for (i = 0; i < IMG_PIXELS; i = i + 1) begin
					code = $fscanf(fd, "%d\n", pixel_val);
					if (code == 1) begin
						img_mem[i] = pixel_val[7:0];
					end else begin
						// 남은 데이터가 없으면 0으로 유지하고 종료한다.
						break;
					end
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

	task automatic wait_done(input int timeout_cycles);
		int cycle_count;
		begin
			cycle_count = 0;
			while ((done !== 1'b1) && (cycle_count < timeout_cycles)) begin
				@(posedge clk);
				cycle_count = cycle_count + 1;
			end

			if (done !== 1'b1) begin
				err_count = err_count + 1;
				if (ENABLE_CONSOLE_LOG) $display("[FAIL] timeout waiting for done after %0d cycles", timeout_cycles);
			end else begin
				if (ENABLE_CONSOLE_LOG) $display("[TB] done asserted after %0d cycles", cycle_count);
			end
		end
	endtask

	task automatic expect_bit(input string name, input logic got, input logic exp);
		begin
			if (got !== exp) begin
				err_count = err_count + 1;
				fail_count = fail_count + 1;
				if (ENABLE_CONSOLE_LOG) $display("[FAIL] %s: got=%0b exp=%0b", name, got, exp);
			end else begin
				pass_count = pass_count + 1;
				if (ENABLE_CONSOLE_LOG) $display("[PASS] %s: %0b", name, got);
			end
		end
	endtask

	task automatic dump_fc1_features(input string label);
		int feature_index;
		begin
			$display("[TB][FC1_FEATURES] %s", label);
			for (feature_index = 0; feature_index < 64; feature_index = feature_index + 1) begin
				$display("[TB][FC1_FEATURE] index=%0d value=%0d", feature_index,
					$signed(dut.U_Data_Buffer.U_frameBuffer_B.mem[feature_index]));
			end
		end
	endtask

	task automatic dump_fc1_input_signature(input string label);
		int feature_index;
		integer value_sum;
		integer index_weighted_sum;
		begin
			value_sum = 0;
			index_weighted_sum = 0;
			for (feature_index = 0; feature_index < 1024; feature_index = feature_index + 1) begin
				value_sum = value_sum + $signed(dut.U_Data_Buffer.U_frameBuffer_A.mem[feature_index]);
				index_weighted_sum = index_weighted_sum
					+ feature_index * $signed(dut.U_Data_Buffer.U_frameBuffer_A.mem[feature_index]);
			end
			$display("[TB][FC1_INPUT_SIGNATURE] %s sum=%0d weighted_sum=%0d",
				label, value_sum, index_weighted_sum);
		end
	endtask

	task automatic run_case(
		input string mem_path,
		input logic expected_result,
		input logic dump_features
	);
		logic case_pass;
		bit load_ok;
		logic signed [31:0] final_score_s32;
		logic signed [31:0] done_score_s32;
		logic signed [31:0] clipped_score_s32;
		real final_score_pct;
		begin
			load_image_mem(mem_path, load_ok);
			if (!load_ok) begin
				if (ENABLE_CONSOLE_LOG) $display("[TB] skip inference because image load failed: %s", mem_path);
				if (ENABLE_FILE_LOG && (log_fd != 0))
					$fdisplay(log_fd, "[TB] skip inference because image load failed: %s", mem_path);
				if (ENABLE_FILE_LOG && (fail_log_fd != 0))
					$fdisplay(fail_log_fd, "%s", mem_path);
				return;
			end

			@(posedge clk);
			start <= 1'b0;
			wait (done === 1'b0);

			if (ENABLE_CONSOLE_LOG) $display("[TB][START] inference mem=%s", mem_path);
			if (ENABLE_FILE_LOG && (log_fd != 0))
				$fdisplay(log_fd, "[TB][START] t=%0t mem=%s", $time, mem_path);
			pulse_start();
			wait_done(TIMEOUT_CYCLES);

			#1;
			done_score_s32 = dut.U_FC.u_fc_core.buffered_accumulator_0_s32;
			if (decision_score_valid)
				final_score_s32 = decision_score_s32;
			else
				final_score_s32 = done_score_s32;
			if (final_score_s32 > 127)
				clipped_score_s32 = 127;
			else if (final_score_s32 < -127)
				clipped_score_s32 = -127;
			else
				clipped_score_s32 = final_score_s32;
			final_score_pct = (clipped_score_s32 * 100.0) / 127.0;
			if (ENABLE_CONSOLE_LOG)
				$display("[TB] final_score_s32=%0d (0x%08h), score_pct=%0.2f%%, done_score_s32=%0d, decision_valid=%0b, decision_result=%0b", final_score_s32, final_score_s32, final_score_pct, done_score_s32, decision_score_valid, decision_result_bit);
			if (ENABLE_FILE_LOG && (log_fd != 0))
				$fdisplay(log_fd, "[TB] final_score_s32=%0d (0x%08h), score_pct=%0.2f%%, done_score_s32=%0d, decision_valid=%0b, decision_result=%0b", final_score_s32, final_score_s32, final_score_pct, done_score_s32, decision_score_valid, decision_result_bit);
			if (ENABLE_CONSOLE_LOG && dump_features)
				dump_fc1_features(mem_path);
			if (ENABLE_CONSOLE_LOG && dump_features)
				dump_fc1_input_signature(mem_path);
			case_pass = (result === expected_result);
			expect_bit({"result for ", mem_path}, result, expected_result);
			if (!case_pass) begin
				if (ENABLE_CONSOLE_LOG) $display("[TB][FAIL_IMAGE] %s", mem_path);
				if (ENABLE_FILE_LOG && (log_fd != 0))
					$fdisplay(log_fd, "[TB][FAIL_IMAGE] t=%0t mem=%s got=%0b exp=%0b score=%0d score_pct=%0.2f%%", $time, mem_path, result, expected_result, final_score_s32, final_score_pct);
				if (ENABLE_FILE_LOG && (fail_log_fd != 0))
					$fdisplay(fail_log_fd, "%s score=%0d score_pct=%0.2f%%", mem_path, final_score_s32, final_score_pct);
			end
			if (ENABLE_CONSOLE_LOG) $display("[TB] case summary: pass=%0d fail=%0d", pass_count, fail_count);
			if (ENABLE_FILE_LOG && (log_fd != 0))
				$fdisplay(log_fd, "[TB] case summary: pass=%0d fail=%0d", pass_count, fail_count);

			@(posedge clk);
			while (done === 1'b1) begin
				@(posedge clk);
			end
		end
	endtask

	task automatic run_cases;
		int image_index;
		string mem_path;
		begin
			for (image_index = 0; image_index < PERSON_COUNT; image_index = image_index + 1) begin
				mem_path = $sformatf("%s/person%0d.mem", MEM_BASE_DIR, image_index);
				run_case(mem_path, 1'b1, image_index == 0);
			end

			for (image_index = 0; image_index < NONPERSON_COUNT; image_index = image_index + 1) begin
				mem_path = $sformatf("%s/nonperson%0d.mem", MEM_BASE_DIR, image_index);
				run_case(mem_path, 1'b0, image_index == 0);
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
		log_fd = 0;
		fail_log_fd = 0;
		if (ENABLE_FILE_LOG) begin
			log_fd = $fopen("tb_CNN_accelerator_mem.log", "w");
			fail_log_fd = $fopen("tb_CNN_accelerator_mem_fail_images.log", "w");
			if ((log_fd == 0) && ENABLE_CONSOLE_LOG) $display("[TB][WARN] cannot open main log file");
			if ((fail_log_fd == 0) && ENABLE_CONSOLE_LOG) $display("[TB][WARN] cannot open fail-image log file");
		end

		clear_image_mem();

		repeat (5) @(posedge clk);
		rst_n = 1'b1;
		repeat (2) @(posedge clk);

		run_cases();

		if (err_count == 0) begin
			if (ENABLE_CONSOLE_LOG) $display("\nALL TESTS PASSED (%0d cases)", TOTAL_CASES);
			if (ENABLE_FILE_LOG && (log_fd != 0)) $fdisplay(log_fd, "ALL TESTS PASSED (%0d cases)", TOTAL_CASES);
		end else begin
			if (ENABLE_CONSOLE_LOG) $display("\nTEST FAILED: err_count=%0d", err_count);
			if (ENABLE_FILE_LOG && (log_fd != 0))
				$fdisplay(log_fd, "TEST FAILED: err_count=%0d", err_count);
		end
		if (ENABLE_CONSOLE_LOG) $display("[TB] final summary: pass=%0d fail=%0d", pass_count, fail_count);
		if (ENABLE_FILE_LOG && (log_fd != 0))
			$fdisplay(log_fd, "[TB] final summary: pass=%0d fail=%0d", pass_count, fail_count);

		if (log_fd != 0) $fclose(log_fd);
		if (fail_log_fd != 0) $fclose(fail_log_fd);

		$finish;
	end

endmodule
