  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovdqa %xmm2, %xmm2           #  1     0    4      OPC=vmovdqa_xmm_xmm        
  divss %xmm2, %xmm3             #  2     0x4  4      OPC=divss_xmm_xmm          
  vunpckhpd %xmm3, %xmm2, %xmm1  #  3     0x8  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
