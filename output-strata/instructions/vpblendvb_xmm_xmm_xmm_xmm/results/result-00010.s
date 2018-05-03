  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  callq .move_128_64_xmm3_xmm10_xmm11   #  1     0     5      OPC=callq_label                
  vmovdqa %xmm4, %xmm0                  #  2     0x5   4      OPC=vmovdqa_xmm_xmm            
  callq .move_128_256_xmm10_xmm11_ymm3  #  3     0x9   5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm3   #  4     0xe   5      OPC=callq_label                
  vmovdqu %xmm2, %xmm1                  #  5     0x13  4      OPC=vmovdqu_xmm_xmm            
  vpblendvb %ymm0, %ymm3, %ymm1, %ymm3  #  6     0x17  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm12_xmm13   #  7     0x1d  5      OPC=callq_label                
  callq .move_64_128_xmm12_xmm13_xmm1   #  8     0x22  5      OPC=callq_label                
  retq                                  #  9     0x27  1      OPC=retq                       
                                                                                             
.size target, .-target
