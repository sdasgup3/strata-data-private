  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  movd %xmm5, %ebx               #  2     0x4  4      OPC=movd_r32_xmm           
  retq                           #  3     0x8  1      OPC=retq                   
                                                                                 
.size target, .-target