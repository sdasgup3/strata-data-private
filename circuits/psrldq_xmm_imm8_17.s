  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vminsd %xmm1, %xmm1, %xmm12    #  1     0     4      OPC=vminsd_xmm_xmm_xmm   
  vandnpd %xmm12, %xmm12, %xmm7  #  2     0x4   5      OPC=vandnpd_xmm_xmm_xmm  
  punpcklqdq %xmm7, %xmm1        #  3     0x9   4      OPC=punpcklqdq_xmm_xmm   
  movhlps %xmm1, %xmm1           #  4     0xd   3      OPC=movhlps_xmm_xmm      
  retq                           #  5     0x10  1      OPC=retq                 
                                                                                
.size target, .-target
