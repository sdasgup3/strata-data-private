  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode               
.target:                                        #        0    0      OPC=<label>          
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  2     0x5  5      OPC=callq_label      
  vmovdqa %ymm2, %ymm1                          #  3     0xa  4      OPC=vmovdqa_ymm_ymm  
  retq                                          #  4     0xe  1      OPC=retq             
                                                                                          
.size target, .-target
