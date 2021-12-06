
// import uvm_pkg::*;

`include "uvm_macros.svh"
`include "sv/CpuInterface.sv"
`include "sv/CpuEnv.sv"
module TopTb;

    reg clk, rst_n;
    wire[7:0] data_bus;

    CpuInterface in_if(clk, rst_n, data_bus);
    CpuInterface out_if(clk, rst_n, data_bus);

    // inout setting
    assign out_if.data_to_tb = out_if.write_en ? data_bus : out_if.data_to_tb;
    assign data_bus = out_if.read_en ? in_if.data_to_dut : 8'bz;

    CPU cpu(
        .clk(clk),
        .reset(rst_n),
        .data_bus(data_bus),
        .addr_bus(out_if.addr_bus),
        .read_en(out_if.read_en),
        .write_en(out_if.write_en),
        .interupt(in_if.interupt),
        .clk_1M(out_if.clk_1M),
        .clk_6M(out_if.clk_6M),
        .memory_select(out_if.memory_select)
    );
    // driver
    initial begin
        // `uvm_info("TopTb", `"T`", UVM_LOW);
        `uvm_info("TopTb", "aaaaaaaaaaaaaaaaaaaaaaaaa", UVM_LOW);
        run_test("CpuEnv");
    end

    initial begin
        uvm_config_db #(virtual CpuInterface)::set(null, "uvm_test_top.i_agt.drv", "cpu_if", in_if); // 将TopTb中的cpu_if接口传给CpuDriver的cpu_if，其中uvm_test_top为通过run_test("CpuDriver")创建的CpuDriver实例。
        uvm_config_db #(virtual CpuInterface)::set(null, "uvm_test_top.i_agt.mon", "cpu_if", in_if);
        uvm_config_db #(virtual CpuInterface)::set(null, "uvm_test_top.o_agt.mon", "cpu_if", out_if);
    end
    // clk generate
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    // reset
    initial begin
        rst_n = 0;
        #30 rst_n = 1;
    end
endmodule