  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label          
  callq .move_64_128_xmm8_xmm9_xmm1  #  2     0x5   5      OPC=callq_label          
  vmovups %xmm1, %xmm5               #  3     0xa   4      OPC=vmovups_xmm_xmm      
  vmovaps %xmm3, %xmm11              #  4     0xe   4      OPC=vmovaps_xmm_xmm      
  vpsllvd %ymm11, %ymm5, %ymm1       #  5     0x12  5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                               #  6     0x17  1      OPC=retq                 
                                                                                    
.size target, .-target
