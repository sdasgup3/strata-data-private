  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vminpd %ymm2, %ymm2, %ymm10      #  1     0     4      OPC=vminpd_ymm_ymm_ymm      
  vunpckhps %ymm10, %ymm10, %ymm0  #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm   
  vmovddup %ymm0, %ymm1            #  3     0x9   4      OPC=vmovddup_ymm_ymm        
  vunpcklps %ymm2, %ymm1, %ymm13   #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm1, %ymm13, %ymm1  #  5     0x11  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
