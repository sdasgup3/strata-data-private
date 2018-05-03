  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklps %ymm2, %ymm3, %ymm10  #  1     0    4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm10, %ymm7  #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm7, %ymm1   #  3     0x8  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target
