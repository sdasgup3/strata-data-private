  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovups %xmm3, %xmm0           #  1     0    4      OPC=vmovups_xmm_xmm        
  vmovdqu %xmm2, %xmm1           #  2     0x4  4      OPC=vmovdqu_xmm_xmm        
  vpackssdw %ymm0, %ymm1, %ymm1  #  3     0x8  4      OPC=vpackssdw_ymm_ymm_ymm  
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
