
import uvm_pkg::*;

`include "uvm_macros.svh"
`include "CpuDriver.sv"

module TopTb;
    reg clk;
    reg rst_n;
    reg [4:0] interupt;
    reg [7:0] data_to_dut;
    wire [7:0] data_to_tb;
    wire [7:0] data_bus;
    wire read_en;
    wire write_en;
    wire clk_1M;
    wire clk_6M;
    wire memory_select;
    wire [15:0] addr_bus;

    // inout setting
    assign data_to_tb = write_en ? data_bus : data_to_tb;
    assign data_bus = read_en ? data_to_dut : 8'bz;

    CPU cpu(
        .clk(clk),
        .reset(rst_n),
        .data_bus(data_bus),
        .addr_bus(addr_bus),
        .read_en(read_en),
        .write_en(write_en),
        .interupt(interupt),
        .clk_1M(clk_1M),
        .clk_6M(clk_6M),
        .memory_select(memory_select)
    );
    // driver
    initial begin
        CpuDriver drv = new("drv", null);
        drv.main_phase(null);
        `uvm_info("CpuDriver", "aaaaaaaaaaaaaaaaaaaaaaaaa", UVM_LOW);
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