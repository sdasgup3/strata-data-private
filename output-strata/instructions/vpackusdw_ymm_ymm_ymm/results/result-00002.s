  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm2  #  2     0x5   5      OPC=callq_label            
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0xa   5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xf   5      OPC=callq_label            
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x14  5      OPC=callq_label            
  vpackusdw %xmm1, %xmm2, %xmm10        #  6     0x19  5      OPC=vpackusdw_xmm_xmm_xmm  
  vpackusdw %xmm9, %xmm13, %xmm11       #  7     0x1e  5      OPC=vpackusdw_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  8     0x23  5      OPC=callq_label            
  retq                                  #  9     0x28  1      OPC=retq                   
                                                                                         
.size target, .-target
