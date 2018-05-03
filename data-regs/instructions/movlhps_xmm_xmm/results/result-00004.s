  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label      
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label      
  vmovdqa %xmm8, %xmm11                #  3     0xa   5      OPC=vmovdqa_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label      
  retq                                 #  5     0x14  1      OPC=retq             
                                                                                  
.size target, .-target
