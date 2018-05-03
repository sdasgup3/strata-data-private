  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm1  #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  movups %xmm3, %xmm1         #  2     0x4  3      OPC=movups_xmm_xmm      
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
