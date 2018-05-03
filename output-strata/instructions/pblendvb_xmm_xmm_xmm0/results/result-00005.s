  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                    #  Line  RIP   Bytes  Opcode                         
.target:                                  #        0     0      OPC=<label>                    
  vmovaps %xmm2, %xmm12                   #  1     0     4      OPC=vmovaps_xmm_xmm            
  callq .move_128_64_xmm1_xmm8_xmm9       #  2     0x4   5      OPC=callq_label                
  callq .move_128_256_xmm8_xmm9_ymm2      #  3     0x9   5      OPC=callq_label                
  vmovapd %xmm0, %xmm13                   #  4     0xe   4      OPC=vmovapd_xmm_xmm            
  callq .move_64_128_xmm8_xmm9_xmm2       #  5     0x12  5      OPC=callq_label                
  vpblendvb %ymm13, %ymm12, %ymm2, %ymm2  #  6     0x17  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm10_xmm11     #  7     0x1d  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1     #  8     0x22  5      OPC=callq_label                
  retq                                    #  9     0x27  1      OPC=retq                       
                                                                                               
.size target, .-target
