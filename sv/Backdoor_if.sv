interface Backdoor_if(input clk, rst_n, inout [7:0] data_bus);
    function bit is_rst();
        return ~TopTb.cpu.rst_n;
    endfunction
endinterface //Backdoor_if