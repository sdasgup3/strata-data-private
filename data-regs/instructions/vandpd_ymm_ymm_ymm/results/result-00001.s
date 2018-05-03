  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movups %xmm3, %xmm3         #  1     0    3      OPC=movups_xmm_xmm      
  vandps %ymm3, %ymm2, %ymm1  #  2     0x3  4      OPC=vandps_ymm_ymm_ymm  
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
