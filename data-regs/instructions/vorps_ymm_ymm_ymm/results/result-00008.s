  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %ymm3, %ymm2, %ymm0   #  1     0    4      OPC=vorpd_ymm_ymm_ymm   
  vmovupd %ymm0, %ymm1        #  2     0x4  4      OPC=vmovupd_ymm_ymm     
  vmaxpd %ymm0, %ymm1, %ymm1  #  3     0x8  4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
