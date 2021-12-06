class OutTrans extends uvm_sequence_item;
    `uvm_object_utils(OutTrans);

    bit[7:0] data;
    bit[15:0] addr;
    bit read_en, write_en, memory_select, clk_1M, clk_6M;

    function new(string name = "OutTrans");
        super.new(name);
    endfunction
    function void my_print();
        $display("data_to_tb = %b", data);
        $display("addr = %b", addr);
        $display("read_en = %b; write_en = %b; memory_select = %b", read_en, write_en, memory_select);        
    endfunction
endclass