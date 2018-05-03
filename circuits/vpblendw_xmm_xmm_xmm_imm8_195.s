  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhps %xmm2, %xmm3, %xmm9  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhps %xmm9, %xmm2, %xmm9  #  2     0x4   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm3, %xmm2, %xmm1     #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm     
  movlhps %xmm9, %xmm1           #  4     0xd   4      OPC=movlhps_xmm_xmm        
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
