  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movdqu %xmm1, %xmm10         #  1     0    5      OPC=movdqu_xmm_xmm      
  vmaxss %xmm10, %xmm1, %xmm1  #  2     0x5  5      OPC=vmaxss_xmm_xmm_xmm  
  retq                         #  3     0xa  1      OPC=retq                
                                                                            
.size target, .-target
