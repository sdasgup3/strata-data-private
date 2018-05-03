  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm4   #  1     0    4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %xmm2, %xmm4, %xmm8  #  2     0x4  4      OPC=vhaddpd_xmm_xmm_xmm  
  movq %xmm8, %xmm1            #  3     0x8  5      OPC=movq_xmm_xmm         
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
