  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vpackuswb %xmm9, %xmm11, %xmm11       #  3     0xa   5      OPC=vpackuswb_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm3  #  4     0xf   5      OPC=callq_label            
  vpackuswb %xmm8, %xmm3, %xmm10        #  5     0x14  5      OPC=vpackuswb_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x19  5      OPC=callq_label            
  retq                                  #  7     0x1e  1      OPC=retq                   
                                                                                         
.size target, .-target
