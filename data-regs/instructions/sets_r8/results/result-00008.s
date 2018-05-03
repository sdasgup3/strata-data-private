  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label  
  xchgb %bl, %bl           #  2     0x5  2      OPC=xchgb_r8_r8  
  retq                     #  3     0x7  1      OPC=retq         
                                                                 
.size target, .-target
