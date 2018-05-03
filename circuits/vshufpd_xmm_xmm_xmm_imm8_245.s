  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label              
  vpunpcklqdq %xmm3, %xmm9, %xmm1    #  2     0x5  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  3     0x9  1      OPC=retq                     
                                                                                       
.size target, .-target
