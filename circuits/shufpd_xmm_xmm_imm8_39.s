  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm2, %xmm1, %xmm5  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  cvtss2sd %xmm5, %xmm2          #  2     0x4  4      OPC=cvtss2sd_xmm_xmm       
  unpckhpd %xmm2, %xmm1          #  3     0x8  4      OPC=unpckhpd_xmm_xmm       
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
