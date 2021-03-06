  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label              
  callq .move_128_256_xmm12_xmm13_ymm3  #  2     0x5   5      OPC=callq_label              
  movaps %xmm13, %xmm2                  #  3     0xa   4      OPC=movaps_xmm_xmm           
  vpunpcklqdq %ymm3, %ymm2, %ymm1       #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
