  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setng %ah                #  1     0    3      OPC=setng_rh     
  salb $0x1, %ah           #  2     0x3  2      OPC=salb_rh_one  
  callq .read_zf_into_rbx  #  3     0x5  5      OPC=callq_label  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
