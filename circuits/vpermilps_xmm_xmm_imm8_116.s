  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovddup %xmm2, %xmm0          #  1     0    4      OPC=vmovddup_xmm_xmm       
  vunpckhps %xmm0, %xmm2, %xmm1  #  2     0x4  4      OPC=vunpckhps_xmm_xmm_xmm  
  movhlps %xmm0, %xmm1           #  3     0x8  3      OPC=movhlps_xmm_xmm        
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
