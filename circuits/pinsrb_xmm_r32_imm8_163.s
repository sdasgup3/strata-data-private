  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  xaddb %bh, %bl                     #  1     0    3      OPC=xaddb_r8_rh  
  callq .move_016_008_bx_r8b_r9b     #  2     0x3  5      OPC=callq_label  
  callq .move_r9b_to_byte_3_of_ymm1  #  3     0x8  5      OPC=callq_label  
  retq                               #  4     0xd  1      OPC=retq         
                                                                           
.size target, .-target
