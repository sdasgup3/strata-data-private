  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label          
  callq .move_128_256_xmm8_xmm9_ymm1    #  2     0x5   5      OPC=callq_label          
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label          
  callq .move_256_128_ymm1_xmm10_xmm11  #  4     0xf   5      OPC=callq_label          
  callq .move_256_128_ymm2_xmm8_xmm9    #  5     0x14  5      OPC=callq_label          
  vpsadbw %xmm10, %xmm12, %xmm1         #  6     0x19  5      OPC=vpsadbw_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  7     0x1e  5      OPC=callq_label          
  vpsadbw %xmm9, %xmm11, %xmm13         #  8     0x23  5      OPC=vpsadbw_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  9     0x28  5      OPC=callq_label          
  retq                                  #  10    0x2d  1      OPC=retq                 
                                                                                       
.size target, .-target