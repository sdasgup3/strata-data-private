  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  vmovups %xmm2, %xmm3                            #  1     0     4      OPC=vmovups_xmm_xmm  
  vmovdqa %xmm3, %xmm3                            #  2     0x4   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label      
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xd   5      OPC=callq_label      
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
