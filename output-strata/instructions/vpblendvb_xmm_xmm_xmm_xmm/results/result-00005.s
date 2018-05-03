  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label                
  callq .move_128_256_xmm12_xmm13_ymm2  #  2     0x5   5      OPC=callq_label                
  callq .move_128_64_xmm2_xmm10_xmm11   #  3     0xa   5      OPC=callq_label                
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label                
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x14  5      OPC=callq_label                
  vmovdqu %xmm4, %xmm0                  #  6     0x19  4      OPC=vmovdqu_xmm_xmm            
  callq .move_128_64_xmm3_xmm10_xmm11   #  7     0x1d  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm2   #  8     0x22  5      OPC=callq_label                
  vpblendvb %ymm0, %ymm2, %ymm1, %ymm1  #  9     0x27  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  retq                                  #  10    0x2d  1      OPC=retq                       
                                                                                             
.size target, .-target
