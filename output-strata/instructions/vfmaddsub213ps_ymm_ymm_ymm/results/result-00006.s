  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                          
.target:                                #        0     0      OPC=<label>                     
  callq .move_256_128_ymm1_xmm8_xmm9    #  1     0     5      OPC=callq_label                 
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label                 
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0xa   5      OPC=callq_label                 
  vfmaddsub213ps %xmm13, %xmm11, %xmm9  #  4     0xf   5      OPC=vfmaddsub213ps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  5     0x14  5      OPC=callq_label                 
  vfmaddsub213ps %xmm12, %xmm10, %xmm8  #  6     0x19  5      OPC=vfmaddsub213ps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  7     0x1e  5      OPC=callq_label                 
  retq                                  #  8     0x23  1      OPC=retq                        
                                                                                              
.size target, .-target
