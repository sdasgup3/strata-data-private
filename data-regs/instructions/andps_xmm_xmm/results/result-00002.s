  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  andpd %xmm2, %xmm1  #  1     0    4      OPC=andpd_xmm_xmm  
  retq                #  2     0x4  1      OPC=retq           
                                                              
.size target, .-target
