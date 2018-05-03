  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vunpcklpd %ymm3, %ymm3, %ymm4    #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm4, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movsd %xmm2, %xmm1               #  3     0x8  4      OPC=movsd_xmm_xmm            
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
