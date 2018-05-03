  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  movq %xmm0, %rbx           #  2     0x4  5      OPC=movq_r64_xmm       
  retq                       #  3     0x9  1      OPC=retq               
                                                                         
.size target, .-target
