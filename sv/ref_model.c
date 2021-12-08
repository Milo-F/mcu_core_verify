#include<svdpi.h>

void ref_mod(
    const svLogicVecVal *interupt,
    const svLogicVecVal *data_in,
    svLogicVecVal *data_out,
    svLogicVecVal *addr_bus, 
    svBit *read_en,
    svBit *write_en, 
    svBit *memory_select
){
    *read_en = 1;
    printf("ref_model has run!!!!!!!!");
}