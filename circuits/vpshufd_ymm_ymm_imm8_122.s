  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm3   #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm2, %ymm3, %ymm0  #  2     0x4  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm0, %ymm2, %ymm1   #  3     0x8  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
