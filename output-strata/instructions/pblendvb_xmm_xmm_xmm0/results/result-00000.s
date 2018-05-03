  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  callq .move_128_64_xmm2_xmm10_xmm11    #  1     0     5      OPC=callq_label                
  vmovaps %xmm0, %xmm14                  #  2     0x5   4      OPC=vmovaps_xmm_xmm            
  callq .move_64_128_xmm10_xmm11_xmm3    #  3     0x9   5      OPC=callq_label                
  vmovapd %xmm3, %xmm7                   #  4     0xe   4      OPC=vmovapd_xmm_xmm            
  vmovups %xmm1, %xmm4                   #  5     0x12  4      OPC=vmovups_xmm_xmm            
  vpblendvb %ymm14, %ymm7, %ymm4, %ymm3  #  6     0x16  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11    #  7     0x1c  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1    #  8     0x21  5      OPC=callq_label                
  retq                                   #  9     0x26  1      OPC=retq                       
                                                                                              
.size target, .-target
