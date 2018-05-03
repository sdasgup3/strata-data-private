  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movaps %xmm2, %xmm7  #  1     0    3      OPC=movaps_xmm_xmm  
  movss %xmm7, %xmm1   #  2     0x3  4      OPC=movss_xmm_xmm   
  retq                 #  3     0x7  1      OPC=retq            
                                                                
.size target, .-target
