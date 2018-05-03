  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label          
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0xa   5      OPC=callq_label          
  vpaddsw %xmm11, %xmm13, %xmm11        #  4     0xf   5      OPC=vpaddsw_xmm_xmm_xmm  
  vpaddsw %xmm8, %xmm10, %xmm10         #  5     0x14  5      OPC=vpaddsw_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x19  5      OPC=callq_label          
  retq                                  #  7     0x1e  1      OPC=retq                 
                                                                                       
.size target, .-target
