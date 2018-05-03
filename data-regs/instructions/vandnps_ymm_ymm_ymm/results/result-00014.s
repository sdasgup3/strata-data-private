  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm6  #  1     0    4      OPC=vandnpd_ymm_ymm_ymm  
  vmovups %ymm6, %ymm1         #  2     0x4  4      OPC=vmovups_ymm_ymm      
  retq                         #  3     0x8  1      OPC=retq                 
                                                                             
.size target, .-target
