  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmovupd %xmm2, %xmm7         #  1     0    4      OPC=vmovupd_xmm_xmm      
  vmovaps %xmm3, %xmm1         #  2     0x4  4      OPC=vmovaps_xmm_xmm      
  vpsllvd %ymm1, %ymm7, %ymm1  #  3     0x8  5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
