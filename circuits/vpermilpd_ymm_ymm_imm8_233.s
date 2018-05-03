  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm0       #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  punpckhqdq %xmm0, %xmm12              #  3     0x9   5      OPC=punpckhqdq_xmm_xmm       
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label              
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
