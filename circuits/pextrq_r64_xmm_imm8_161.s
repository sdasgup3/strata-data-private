  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm1  #  1     0    4      OPC=vsqrtss_xmm_xmm_xmm  
  unpckhpd %xmm1, %xmm1        #  2     0x4  4      OPC=unpckhpd_xmm_xmm     
  movq %xmm1, %rbx             #  3     0x8  5      OPC=movq_r64_xmm         
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
