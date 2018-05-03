  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  vmovdqa %xmm2, %xmm1                 #  1     0    4      OPC=vmovdqa_xmm_xmm     
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label         
  punpcklqdq %xmm13, %xmm1             #  3     0x9  5      OPC=punpcklqdq_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
