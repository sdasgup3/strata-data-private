  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %xmm3, %xmm2, %xmm14  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vorpd %xmm14, %xmm14, %xmm1     #  2     0x4  5      OPC=vorpd_xmm_xmm_xmm      
  retq                            #  3     0x9  1      OPC=retq                   
                                                                                  
.size target, .-target
