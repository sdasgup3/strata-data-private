  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  callq .move_128_256_xmm10_xmm11_ymm3  #  3     0xa   5      OPC=callq_label          
  vpaddsw %xmm11, %xmm13, %xmm9         #  4     0xf   5      OPC=vpaddsw_xmm_xmm_xmm  
  vpaddsw %xmm2, %xmm3, %xmm8           #  5     0x14  4      OPC=vpaddsw_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label          
  retq                                  #  7     0x1d  1      OPC=retq                 
                                                                                       
.size target, .-target
