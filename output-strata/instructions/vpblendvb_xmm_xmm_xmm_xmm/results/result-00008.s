  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label                
  vmovupd %xmm4, %xmm1                  #  2     0x5   4      OPC=vmovupd_xmm_xmm            
  vmovdqa %xmm2, %xmm6                  #  3     0x9   4      OPC=vmovdqa_xmm_xmm            
  vminps %ymm6, %ymm6, %ymm2            #  4     0xd   4      OPC=vminps_ymm_ymm_ymm         
  callq .move_64_128_xmm12_xmm13_xmm2   #  5     0x11  5      OPC=callq_label                
  vpblendvb %ymm1, %ymm2, %ymm6, %ymm1  #  6     0x16  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  retq                                  #  7     0x1c  1      OPC=retq                       
                                                                                             
.size target, .-target
