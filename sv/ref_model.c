#include<svdpi.h>

void ref_mod(
    const svBit rst_n,
    const svLogicVecVal* interupt,
    const svLogicVecVal* data_in,
    svLogicVecVal* data_out,
    svLogicVecVal* addr_bus, 
    svBit* read_en, 
    svBit* write_en, 
    svBit* memory_select
){
    printf("ref_model has run!!!!!!!!");
}