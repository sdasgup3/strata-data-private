  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movddup %xmm3, %xmm3           #  1     0    4      OPC=movddup_xmm_xmm        
  vunpckhpd %ymm3, %ymm2, %ymm1  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  3     0x8  1      OPC=retq                   
                                                                                 
.size target, .-target
