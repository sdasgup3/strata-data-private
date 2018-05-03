  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vmovups %xmm3, %xmm10          #  1     0    4      OPC=vmovups_xmm_xmm      
  vmovapd %xmm2, %xmm13          #  2     0x4  4      OPC=vmovapd_xmm_xmm      
  vpsllvd %ymm10, %ymm13, %ymm1  #  3     0x8  5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
