  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  vmovapd %xmm2, %xmm1                   #  1     0     4      OPC=vmovapd_xmm_xmm            
  vmovdqa %xmm4, %xmm2                   #  2     0x4   4      OPC=vmovdqa_xmm_xmm            
  vmovaps %xmm3, %xmm11                  #  3     0x8   4      OPC=vmovaps_xmm_xmm            
  vpblendvb %ymm2, %ymm11, %ymm1, %ymm2  #  4     0xc   6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11   #  5     0x12  5      OPC=callq_label                
  callq .move_128_256_xmm10_xmm11_ymm1   #  6     0x17  5      OPC=callq_label                
  retq                                   #  7     0x1c  1      OPC=retq                       
                                                                                              
.size target, .-target
