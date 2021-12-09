class CpuSequence extends uvm_sequence #(InTrans);
    // regist
    `uvm_object_utils(CpuSequence);
    // members
    InTrans tr;
    // methods
    function new(string name = "CpuSeuqnce");
        super.new(name);
    endfunction

    virtual task body();
        int i = 0;
        repeat(10) begin
            `uvm_do(tr);
            $display("%d-----------------------------------------", i);
            i++;
        end
        #10;
        $display("8888888888888888888888888888888888888888888888end");
    endtask
endclass