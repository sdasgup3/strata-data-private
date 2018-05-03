  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm3  #  3     0xa   5      OPC=callq_label            
  callq .move_128_256_xmm12_xmm13_ymm2  #  4     0xf   5      OPC=callq_label            
  vpackuswb %xmm13, %xmm11, %xmm13      #  5     0x14  5      OPC=vpackuswb_xmm_xmm_xmm  
  vpackuswb %xmm2, %xmm3, %xmm12        #  6     0x19  4      OPC=vpackuswb_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1d  5      OPC=callq_label            
  retq                                  #  8     0x22  1      OPC=retq                   
                                                                                         
.size target, .-target
