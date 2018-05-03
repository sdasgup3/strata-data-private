  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  callq .move_128_64_xmm1_xmm10_xmm11    #  1     0     5      OPC=callq_label                
  callq .move_128_256_xmm10_xmm11_ymm3   #  2     0x5   5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm3    #  3     0xa   5      OPC=callq_label                
  vmovdqu %xmm0, %xmm5                   #  4     0xf   4      OPC=vmovdqu_xmm_xmm            
  vmovups %xmm2, %xmm14                  #  5     0x13  4      OPC=vmovups_xmm_xmm            
  vpblendvb %ymm5, %ymm14, %ymm3, %ymm2  #  6     0x17  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9      #  7     0x1d  5      OPC=callq_label                
  callq .move_64_128_xmm8_xmm9_xmm1      #  8     0x22  5      OPC=callq_label                
  retq                                   #  9     0x27  1      OPC=retq                       
                                                                                              
.size target, .-target
