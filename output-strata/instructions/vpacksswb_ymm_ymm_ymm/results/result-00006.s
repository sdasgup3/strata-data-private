  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label            
  vpacksswb %xmm10, %xmm2, %xmm8        #  3     0xa   5      OPC=vpacksswb_xmm_xmm_xmm  
  vpacksswb %xmm11, %xmm9, %xmm9        #  4     0xf   5      OPC=vpacksswb_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x14  5      OPC=callq_label            
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
