  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  callq .move_128_64_xmm2_xmm10_xmm11    #  1     0     5      OPC=callq_label                
  callq .move_128_64_xmm3_xmm8_xmm9      #  2     0x5   5      OPC=callq_label                
  vmovdqu %xmm8, %xmm1                   #  3     0xa   5      OPC=vmovdqu_xmm_xmm            
  callq .move_128_256_xmm8_xmm9_ymm3     #  4     0xf   5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1    #  5     0x14  5      OPC=callq_label                
  callq .move_64_128_xmm8_xmm9_xmm3      #  6     0x19  5      OPC=callq_label                
  vmovupd %xmm4, %xmm11                  #  7     0x1e  4      OPC=vmovupd_xmm_xmm            
  vpblendvb %ymm11, %ymm3, %ymm1, %ymm2  #  8     0x22  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13    #  9     0x28  5      OPC=callq_label                
  callq .move_64_128_xmm12_xmm13_xmm1    #  10    0x2d  5      OPC=callq_label                
  retq                                   #  11    0x32  1      OPC=retq                       
                                                                                              
.size target, .-target
