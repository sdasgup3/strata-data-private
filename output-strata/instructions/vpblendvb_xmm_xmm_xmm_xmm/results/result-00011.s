  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label                
  vmovdqa %xmm3, %xmm3                  #  2     0x5   4      OPC=vmovdqa_xmm_xmm            
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label                
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xe   5      OPC=callq_label                
  vmovapd %xmm4, %xmm1                  #  5     0x13  4      OPC=vmovapd_xmm_xmm            
  callq .move_64_128_xmm8_xmm9_xmm2     #  6     0x17  5      OPC=callq_label                
  vpblendvb %ymm1, %ymm3, %ymm2, %ymm1  #  7     0x1c  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  retq                                  #  8     0x22  1      OPC=retq                       
                                                                                             
.size target, .-target
