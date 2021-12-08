class InTrans extends uvm_sequence_item;
    // registe
    `uvm_object_utils_begin(InTrans)
        `uvm_field_int(data, UVM_ALL_ON);
        `uvm_field_int(interupt, UVM_ALL_ON);
    `uvm_object_utils_end
    // members
    rand bit[7:0] data;
    rand bit[4:0] interupt;
    // constraint
    constraint inter_cons{
        interupt dist {4'b0 := 80, 4'b1 := 4, 4'b10 := 4, 4'b100 := 4, 4'b1000 := 4, 4'b10000 := 4};
    };
    // methods
    function new(string name = "InTrans");
        super.new(name);
    endfunction //new()
endclass //CpuTrans extends uvm_sequence_item