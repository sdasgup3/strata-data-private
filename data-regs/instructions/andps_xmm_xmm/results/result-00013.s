  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  minss %xmm2, %xmm2  #  1     0    4      OPC=minss_xmm_xmm  
  pand %xmm2, %xmm1   #  2     0x4  4      OPC=pand_xmm_xmm   
  retq                #  3     0x8  1      OPC=retq           
                                                              
.size target, .-target
