
// import uvm_pkg::*;

`include "uvm_macros.svh"
`include "sv/CpuEnv.sv"
`include "sv/CpuInterface.sv"

module TopTb;

    reg clk, rst_n;

    CpuInterface cpu_if(clk, rst_n);

    // inout setting
    assign cpu_if.data_to_tb = cpu_if.write_en ? cpu_if.data_bus : cpu_if.data_to_tb;
    assign cpu_if.data_bus = cpu_if.read_en ? cpu_if.data_to_dut : 8'bz;

    CPU cpu(
        .clk(clk),
        .reset(rst_n),
        .data_bus(cpu_if.data_bus),
        .addr_bus(cpu_if.addr_bus),
        .read_en(cpu_if.read_en),
        .write_en(cpu_if.write_en),
        .interupt(cpu_if.interupt),
        .clk_1M(cpu_if.clk_1M),
        .clk_6M(cpu_if.clk_6M),
        .memory_select(cpu_if.memory_select)
    );
    // driver
    initial begin
        // `uvm_info("TopTb", `"T`", UVM_LOW);
        `uvm_info("TopTb", "aaaaaaaaaaaaaaaaaaaaaaaaa", UVM_LOW);
        run_test("CpuEnv");
    end

    initial begin
        uvm_config_db #(virtual CpuInterface)::set(null, "uvm_test_top.cpu_drv", "cpu_if", cpu_if); // 将TopTb中的cpu_if接口传给CpuDriver的cpu_if，其中uvm_test_top为通过run_test("CpuDriver")创建的CpuDriver实例。
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