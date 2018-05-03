  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm2, %ymm9    #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm    
  vmovsldup %ymm3, %ymm3           #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm2, %ymm3, %ymm6   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm6, %ymm9, %ymm1  #  4     0xc   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
