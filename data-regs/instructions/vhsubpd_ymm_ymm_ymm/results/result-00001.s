  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm5  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %ymm3, %ymm2, %ymm6    #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vsubpd %ymm5, %ymm6, %ymm1       #  3     0x8  4      OPC=vsubpd_ymm_ymm_ymm       
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
