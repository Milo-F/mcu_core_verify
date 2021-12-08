
class CpuScb extends uvm_scoreboard;
    // regist
    `uvm_component_utils(CpuScb);
    // members
    uvm_blocking_get_port #(OutTrans) mod_p; // 来自reference model的数据
    uvm_blocking_get_port #(OutTrans) mon_p; // 来自DUT的数据
    OutTrans mod_tr, mon_tr;
    // methods
    function new(string name = "CpuScb", uvm_component parent);
        super.new(name, parent);
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass

function void CpuScb::build_phase(uvm_phase phase);
    super.build_phase(phase);
    mod_p = new("mod_p", this);
    mon_p = new("mon_p", this);
    mod_tr = OutTrans::type_id::create("mod_tr");
    mon_tr = OutTrans::type_id::create("mon_tr");
endfunction

task CpuScb::main_phase(uvm_phase phase);
    bit result;
    super.main_phase(phase);
    // compare
    while (1) begin
        mod_p.get(mod_tr);
        mon_p.get(mon_tr);
        result = mod_tr.compare(mon_tr);
        if (!result) begin
            `uvm_info("CpuScb", "error compared!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", UVM_LOW);
            $display("the error transaction of dut is");
            mon_tr.print();
            $display("the error transaction of reference model is");
            mod_tr.print();
        end
        else begin
            `uvm_info("CpuScb", "compare pass!", UVM_LOW);
        end
    end
endtask