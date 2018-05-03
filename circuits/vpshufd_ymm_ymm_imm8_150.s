  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm8    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm2, %ymm8, %ymm6   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhps %ymm8, %ymm2, %ymm9    #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm6, %ymm9, %ymm1  #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target