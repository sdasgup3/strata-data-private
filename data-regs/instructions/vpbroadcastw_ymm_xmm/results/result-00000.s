  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm1      #  2     0x5   5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1   #  3     0xa   5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1           #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_byte_13_of_ymm1_to_r9b  #  5     0x14  5      OPC=callq_label           
  callq .move_r9b_to_byte_3_of_ymm1   #  6     0x19  5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1           #  7     0x1e  5      OPC=vpbroadcastd_ymm_xmm  
  retq                                #  8     0x23  1      OPC=retq                  
                                                                                      
.size target, .-target
