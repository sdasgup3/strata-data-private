  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm1  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  retq                       #  2     0x5  1      OPC=retq                  
                                                                            
.size target, .-target
