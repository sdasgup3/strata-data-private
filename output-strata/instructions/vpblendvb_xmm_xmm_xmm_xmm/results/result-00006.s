  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  vmovapd %xmm4, %xmm8                  #  1     0     4      OPC=vmovapd_xmm_xmm            
  callq .move_128_64_xmm3_xmm10_xmm11   #  2     0x4   5      OPC=callq_label                
  vmovapd %xmm2, %xmm2                  #  3     0x9   4      OPC=vmovapd_xmm_xmm            
  vmovaps %xmm10, %xmm1                 #  4     0xd   5      OPC=vmovaps_xmm_xmm            
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x12  5      OPC=callq_label                
  vpblendvb %ymm8, %ymm1, %ymm2, %ymm3  #  6     0x17  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11   #  7     0x1d  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1   #  8     0x22  5      OPC=callq_label                
  retq                                  #  9     0x27  1      OPC=retq                       
                                                                                             
.size target, .-target
