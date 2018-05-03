  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                          
.target:                                #        0     0      OPC=<label>                     
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label                 
  callq .move_256_128_ymm1_xmm8_xmm9    #  2     0x5   5      OPC=callq_label                 
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0xa   5      OPC=callq_label                 
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0xf   5      OPC=callq_label                 
  vfmsubadd132pd %ymm1, %ymm3, %ymm2    #  5     0x14  5      OPC=vfmsubadd132pd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9    #  6     0x19  5      OPC=callq_label                 
  callq .move_128_256_xmm8_xmm9_ymm1    #  7     0x1e  5      OPC=callq_label                 
  retq                                  #  8     0x23  1      OPC=retq                        
                                                                                              
.size target, .-target