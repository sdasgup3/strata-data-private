  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                  
.target:                             #        0    0      OPC=<label>             
  vmovdqu %xmm3, %xmm1               #  1     0    4      OPC=vmovdqu_xmm_xmm     
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4  5      OPC=callq_label         
  vmovss %xmm9, %xmm2, %xmm1         #  3     0x9  5      OPC=vmovss_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq                
                                                                                  
.size target, .-target