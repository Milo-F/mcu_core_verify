class OutTrans extends uvm_sequence_item;
    // regist
    `uvm_object_utils_begin(OutTrans)
        `uvm_field_int(data, UVM_ALL_ON);
        `uvm_field_int(addr, UVM_ALL_ON);
        `uvm_field_int(read_en, UVM_ALL_ON);
        `uvm_field_int(write_en, UVM_ALL_ON);
        `uvm_field_int(memory_select, UVM_ALL_ON); // compare 是按照注册顺序比较的
    `uvm_object_utils_end

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
endclass