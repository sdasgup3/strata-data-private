  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovshdup %xmm2, %xmm4         #  1     0    4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm4, %xmm1, %xmm2  #  2     0x4  4      OPC=vunpckhps_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm1        #  3     0x8  4      OPC=punpcklqdq_xmm_xmm     
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
