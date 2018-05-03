  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_14_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label     
  movdqu %xmm2, %xmm1                 #  3     0xa   4      OPC=movdqu_xmm_xmm  
  callq .move_r8b_to_byte_14_of_ymm1  #  4     0xe   5      OPC=callq_label     
  callq .move_r9b_to_byte_15_of_ymm1  #  5     0x13  5      OPC=callq_label     
  retq                                #  6     0x18  1      OPC=retq            
                                                                                
.size target, .-target
