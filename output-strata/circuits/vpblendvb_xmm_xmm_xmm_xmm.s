  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                         
.target:                                #        0     0      OPC=<label>                    
  vmovups %xmm3, %xmm3                  #  1     0     4      OPC=vmovups_xmm_xmm            
  vmovapd %xmm4, %xmm5                  #  2     0x4   4      OPC=vmovapd_xmm_xmm            
  callq .move_128_64_xmm2_xmm12_xmm13   #  3     0x8   5      OPC=callq_label                
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xd   5      OPC=callq_label                
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x12  5      OPC=callq_label                
  vpblendvb %ymm5, %ymm3, %ymm1, %ymm1  #  6     0x17  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  vmovaps %xmm1, %xmm1                  #  7     0x1d  4      OPC=vmovaps_xmm_xmm            
  retq                                  #  8     0x21  1      OPC=retq                       
                                                                                             
.size target, .-target
