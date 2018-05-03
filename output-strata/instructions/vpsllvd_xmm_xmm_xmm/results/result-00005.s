  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label          
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label          
  vmovupd %xmm1, %xmm1                 #  4     0xf   4      OPC=vmovupd_xmm_xmm      
  callq .move_64_128_xmm12_xmm13_xmm2  #  5     0x13  5      OPC=callq_label          
  vmovaps %xmm2, %xmm9                 #  6     0x18  4      OPC=vmovaps_xmm_xmm      
  vpsllvd %ymm9, %ymm1, %ymm1          #  7     0x1c  5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                                 #  8     0x21  1      OPC=retq                 
                                                                                      
.size target, .-target
