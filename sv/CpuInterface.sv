interface CpuInterface(input clk, rst_n, input [7:0] data_bus);
    logic [4:0] interupt;
    logic [7:0] data_to_dut;
    logic [7:0] data_to_tb;
    logic read_en;
    logic write_en;
    logic clk_1M;
    logic clk_6M;
    logic memory_select;
    logic [15:0] addr_bus;
endinterface //CpuInterface