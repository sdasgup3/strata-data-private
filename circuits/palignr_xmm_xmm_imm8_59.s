  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  psubq %xmm1, %xmm1  #  1     0    4      OPC=psubq_xmm_xmm  
  subpd %xmm1, %xmm1  #  2     0x4  4      OPC=subpd_xmm_xmm  
  retq                #  3     0x8  1      OPC=retq           
                                                              
.size target, .-target
