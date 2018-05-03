  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_256_xmm8_xmm9_ymm3              #  2     0x5   5      OPC=callq_label            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  3     0xa   5      OPC=callq_label            
  vmovdqu %xmm1, %xmm9                            #  4     0xf   4      OPC=vmovdqu_xmm_xmm        
  vpackssdw %ymm3, %ymm9, %ymm8                   #  5     0x13  4      OPC=vpackssdw_ymm_ymm_ymm  
  vpackssdw %ymm9, %ymm3, %ymm9                   #  6     0x17  5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1c  5      OPC=callq_label            
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
