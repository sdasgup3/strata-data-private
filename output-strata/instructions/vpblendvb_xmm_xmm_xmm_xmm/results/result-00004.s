  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  vmovupd %xmm4, %xmm12                  #  1     0     4      OPC=vmovupd_xmm_xmm            
  vmaxps %xmm2, %xmm2, %xmm0             #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm         
  callq .move_128_64_xmm2_xmm8_xmm9      #  3     0x8   5      OPC=callq_label                
  vmovapd %xmm3, %xmm1                   #  4     0xd   4      OPC=vmovapd_xmm_xmm            
  callq .move_128_256_xmm8_xmm9_ymm3     #  5     0x11  5      OPC=callq_label                
  callq .move_128_64_xmm3_xmm8_xmm9      #  6     0x16  5      OPC=callq_label                
  vpblendvb %ymm12, %ymm1, %ymm0, %ymm8  #  7     0x1b  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1     #  8     0x21  5      OPC=callq_label                
  retq                                   #  9     0x26  1      OPC=retq                       
                                                                                              
.size target, .-target
