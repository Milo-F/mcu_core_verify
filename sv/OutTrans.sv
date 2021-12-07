class OutTrans extends uvm_sequence_item;
    `uvm_object_utils(OutTrans);

    bit[7:0] data = 0;
    bit[15:0] addr = 0;
    bit read_en = 0;
    bit write_en = 0;
    bit memory_select = 1;
    bit clk_1M = 0;
    bit clk_6M = 0;

    function new(string name = "OutTrans");
        super.new(name);
    endfunction

    function void reset();
        data = 0;
        addr = 0;
        read_en = 0;
        write_en = 0;
        memory_select = 1;
        clk_1M = 0;
        clk_6M = 0;
    endfunction
    function void my_print();
        $display("data_to_tb = %b", data);
        $display("addr = %b", addr);
        $display("read_en = %b; write_en = %b; memory_select = %b", read_en, write_en, memory_select);        
    endfunction
endclass