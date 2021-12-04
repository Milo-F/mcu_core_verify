class InTrans extends uvm_sequence_item;
    // registe
    `uvm_object_utils(InTrans);
    // members
    rand byte data;
    rand bit[4:0] interupt;
    // constraint
    constraint inter_cons{
        interupt dist {4'b0 := 80, 4'b1 := 4, 4'b10 := 4, 4'b100 := 4, 4'b1000 := 4, 4'b10000 := 4};
    };
    // methods
    function new(string name = "InTrans");
        super.new(name);
    endfunction //new()
    function void my_print();
        $display("data_to_dut = %b", data);
        $display("interupt = %b", interupt);
    endfunction
endclass //CpuTrans extends uvm_sequence_item