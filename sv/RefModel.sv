import "DPI-C" function void ref_mod(
    input bit 
    input bit[4:0] i_agt.cpu_if.interupt,
    inout bit[7:0] 
);

class RefModel extends uvm_component;
    // regist
    `uvm_component_utils(RefModel);
    
endclass