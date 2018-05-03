  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  callq .move_256_128_ymm3_xmm8_xmm9    #  2     0x5   5      OPC=callq_label          
  callq .move_128_256_xmm8_xmm9_ymm1    #  3     0xa   5      OPC=callq_label          
  vpsadbw %xmm2, %xmm1, %xmm2           #  4     0xf   4      OPC=vpsadbw_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  5     0x13  5      OPC=callq_label          
  vpsadbw %xmm13, %xmm9, %xmm11         #  6     0x18  5      OPC=vpsadbw_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x1d  5      OPC=callq_label          
  retq                                  #  8     0x22  1      OPC=retq                 
                                                                                       
.size target, .-target