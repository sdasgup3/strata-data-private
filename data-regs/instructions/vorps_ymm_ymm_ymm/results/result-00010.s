  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovdqa %ymm3, %ymm1        #  1     0    4      OPC=vmovdqa_ymm_ymm     
  vorpd %ymm1, %ymm2, %ymm4   #  2     0x4  4      OPC=vorpd_ymm_ymm_ymm   
  vminpd %ymm4, %ymm4, %ymm1  #  3     0x8  4      OPC=vminpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
