  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                
.target:                      #        0    0      OPC=<label>           
  vmovupd %ymm2, %ymm12       #  1     0    4      OPC=vmovupd_ymm_ymm   
  vpor %ymm12, %ymm12, %ymm1  #  2     0x4  5      OPC=vpor_ymm_ymm_ymm  
  retq                        #  3     0x9  1      OPC=retq              
                                                                         
.size target, .-target
