  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm2, %xmm1, %xmm8  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pandn %xmm8, %xmm1           #  2     0x4  5      OPC=pandn_xmm_xmm        
  retq                         #  3     0x9  1      OPC=retq                 
                                                                             
.size target, .-target
