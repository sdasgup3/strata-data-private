  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  pand %xmm1, %xmm2    #  1     0    4      OPC=pand_xmm_xmm    
  movaps %xmm2, %xmm1  #  2     0x4  3      OPC=movaps_xmm_xmm  
  retq                 #  3     0x7  1      OPC=retq            
                                                                
.size target, .-target