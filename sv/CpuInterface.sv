interface CpuInterface(input clk, rst_n);
    logic [4:0] interupt;
    reg [7:0] data_to_dut;
    wire [7:0] data_to_tb;
    wire [7:0] data_bus;
    logic read_en;
    logic write_en;
    logic clk_1M;
    logic clk_6M;
    logic memory_select;
    logic [15:0] addr_bus;
endinterface //CpuInterface