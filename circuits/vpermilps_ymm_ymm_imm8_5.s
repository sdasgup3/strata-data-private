  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovsldup %ymm2, %ymm0         #  1     0    4      OPC=vmovsldup_ymm_ymm      
  vunpcklpd %ymm0, %ymm2, %ymm3  #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovshdup %ymm3, %ymm1         #  3     0x8  4      OPC=vmovshdup_ymm_ymm      
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
