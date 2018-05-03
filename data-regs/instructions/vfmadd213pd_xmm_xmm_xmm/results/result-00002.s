  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd132pd %xmm1, %xmm3, %xmm2  #  1     0    5      OPC=vfmadd132pd_xmm_xmm_xmm  
  vminsd %xmm2, %xmm2, %xmm1       #  2     0x5  4      OPC=vminsd_xmm_xmm_xmm       
  retq                             #  3     0x9  1      OPC=retq                     
                                                                                     
.size target, .-target
