  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm3, %ymm1  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm1, %ymm1    #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                             #  3     0x8  1      OPC=retq                     
                                                                                     
.size target, .-target
