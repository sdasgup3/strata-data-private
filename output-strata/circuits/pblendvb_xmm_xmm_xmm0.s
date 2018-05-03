  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                    #  Line  RIP   Bytes  Opcode                         
.target:                                  #        0     0      OPC=<label>                    
  vmovaps %xmm0, %xmm12                   #  1     0     4      OPC=vmovaps_xmm_xmm            
  vmovaps %xmm2, %xmm5                    #  2     0x4   4      OPC=vmovaps_xmm_xmm            
  vmovups %xmm1, %xmm3                    #  3     0x8   4      OPC=vmovups_xmm_xmm            
  callq .move_128_64_xmm2_xmm10_xmm11     #  4     0xc   5      OPC=callq_label                
  vpblendvb %ymm12, %ymm5, %ymm3, %ymm10  #  5     0x11  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm3    #  6     0x17  5      OPC=callq_label                
  callq .move_128_64_xmm3_xmm10_xmm11     #  7     0x1c  5      OPC=callq_label                
  callq .move_64_128_xmm10_xmm11_xmm1     #  8     0x21  5      OPC=callq_label                
  retq                                    #  9     0x26  1      OPC=retq                       
                                                                                               
.size target, .-target
