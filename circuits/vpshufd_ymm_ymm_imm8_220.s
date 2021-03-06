  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vmovshdup %ymm2, %ymm10          #  1     0    4      OPC=vmovshdup_ymm_ymm       
  vunpckhpd %ymm2, %ymm10, %ymm13  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm13, %ymm2, %ymm1  #  3     0x8  5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
