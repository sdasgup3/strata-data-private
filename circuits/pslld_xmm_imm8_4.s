  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  paddd %xmm1, %xmm1  #  1     0     4      OPC=paddd_xmm_xmm  
  paddd %xmm1, %xmm1  #  2     0x4   4      OPC=paddd_xmm_xmm  
  paddd %xmm1, %xmm1  #  3     0x8   4      OPC=paddd_xmm_xmm  
  paddd %xmm1, %xmm1  #  4     0xc   4      OPC=paddd_xmm_xmm  
  retq                #  5     0x10  1      OPC=retq           
                                                               
.size target, .-target
