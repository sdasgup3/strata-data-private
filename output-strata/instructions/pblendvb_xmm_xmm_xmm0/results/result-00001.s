  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                    #  Line  RIP   Bytes  Opcode                         
.target:                                  #        0     0      OPC=<label>                    
  vmovapd %xmm1, %xmm14                   #  1     0     4      OPC=vmovapd_xmm_xmm            
  vmovdqu %xmm0, %xmm12                   #  2     0x4   4      OPC=vmovdqu_xmm_xmm            
  vmovapd %xmm2, %xmm7                    #  3     0x8   4      OPC=vmovapd_xmm_xmm            
  vpblendvb %ymm12, %ymm7, %ymm14, %ymm3  #  4     0xc   6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11     #  5     0x12  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1     #  6     0x17  5      OPC=callq_label                
  retq                                    #  7     0x1c  1      OPC=retq                       
                                                                                               
.size target, .-target
