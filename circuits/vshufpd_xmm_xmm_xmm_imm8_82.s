  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminpd %xmm2, %xmm2, %xmm14  #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  vmovsd %xmm14, %xmm3, %xmm1  #  2     0x4  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
