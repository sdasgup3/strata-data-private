  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vmovsldup %ymm2, %ymm15          #  1     0    4      OPC=vmovsldup_ymm_ymm      
  vunpcklps %ymm15, %ymm15, %ymm1  #  2     0x4  5      OPC=vunpcklps_ymm_ymm_ymm  
  retq                             #  3     0x9  1      OPC=retq                   
                                                                                   
.size target, .-target
