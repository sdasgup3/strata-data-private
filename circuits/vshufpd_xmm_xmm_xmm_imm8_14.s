  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0    5      OPC=callq_label            
  vunpcklpd %xmm9, %xmm2, %xmm1      #  2     0x5  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                               #  3     0xa  1      OPC=retq                   
                                                                                     
.size target, .-target
