  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm1  #  1     0    4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm1, %ymm1, %ymm8   #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpckhps %ymm8, %ymm2, %ymm1   #  3     0x8  5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
