  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  callq .move_032_016_ebx_r8w_r9w    #  1     0    5      OPC=callq_label  
  xaddb %r9b, %r8b                   #  2     0x5  4      OPC=xaddb_r8_r8  
  callq .move_r9b_to_byte_8_of_ymm1  #  3     0x9  5      OPC=callq_label  
  retq                               #  4     0xe  1      OPC=retq         
                                                                           
.size target, .-target
