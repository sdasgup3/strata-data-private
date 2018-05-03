  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vpor %ymm2, %ymm3, %ymm14     #  1     0    4      OPC=vpor_ymm_ymm_ymm     
  vandps %ymm3, %ymm2, %ymm4    #  2     0x4  4      OPC=vandps_ymm_ymm_ymm   
  vandnpd %ymm14, %ymm4, %ymm1  #  3     0x8  5      OPC=vandnpd_ymm_ymm_ymm  
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
