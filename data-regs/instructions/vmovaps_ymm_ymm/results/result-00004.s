  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminps %ymm2, %ymm2, %ymm13  #  1     0    4      OPC=vminps_ymm_ymm_ymm  
  vmovdqu %ymm13, %ymm1        #  2     0x4  5      OPC=vmovdqu_ymm_ymm     
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
