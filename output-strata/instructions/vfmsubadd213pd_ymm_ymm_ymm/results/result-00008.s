  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                          
.target:                                #        0     0      OPC=<label>                     
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label                 
  callq .move_128_256_xmm12_xmm13_ymm1  #  2     0x5   5      OPC=callq_label                 
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0xa   5      OPC=callq_label                 
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xf   5      OPC=callq_label                 
  vfmsubadd132pd %xmm13, %xmm9, %xmm11  #  5     0x14  5      OPC=vfmsubadd132pd_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  6     0x19  5      OPC=callq_label                 
  vfmsubadd132pd %xmm12, %xmm8, %xmm10  #  7     0x1e  5      OPC=vfmsubadd132pd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  8     0x23  5      OPC=callq_label                 
  retq                                  #  9     0x28  1      OPC=retq                        
                                                                                              
.size target, .-target