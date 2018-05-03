  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  callq .move_128_256_xmm8_xmm9_ymm3    #  3     0xa   5      OPC=callq_label            
  vpacksswb %xmm12, %xmm3, %xmm3        #  4     0xf   5      OPC=vpacksswb_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2    #  5     0x14  5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  6     0x19  5      OPC=callq_label            
  callq .move_256_128_ymm3_xmm8_xmm9    #  7     0x1e  5      OPC=callq_label            
  vpacksswb %xmm13, %xmm11, %xmm9       #  8     0x23  5      OPC=vpacksswb_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  9     0x28  5      OPC=callq_label            
  retq                                  #  10    0x2d  1      OPC=retq                   
                                                                                         
.size target, .-target
