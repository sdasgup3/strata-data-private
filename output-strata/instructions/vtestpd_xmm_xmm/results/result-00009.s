  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm8_xmm9     #  1     0     5      OPC=callq_label      
  callq .move_128_256_xmm8_xmm9_ymm1    #  2     0x5   5      OPC=callq_label      
  callq .move_128_64_xmm2_xmm12_xmm13   #  3     0xa   5      OPC=callq_label      
  callq .move_byte_7_of_ymm1_to_r8b     #  4     0xf   5      OPC=callq_label      
  callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x14  5      OPC=callq_label      
  callq .move_r8b_to_byte_28_of_ymm1    #  6     0x19  5      OPC=callq_label      
  vtestpd %ymm3, %ymm1                  #  7     0x1e  5      OPC=vtestpd_ymm_ymm  
  retq                                  #  8     0x23  1      OPC=retq             
                                                                                   
.size target, .-target