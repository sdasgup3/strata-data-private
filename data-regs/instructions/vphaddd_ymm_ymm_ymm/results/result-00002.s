  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label     
  phaddd %xmm3, %xmm2                   #  2     0x5   5      OPC=phaddd_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label     
  phaddd %xmm9, %xmm13                  #  4     0xf   6      OPC=phaddd_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x15  5      OPC=callq_label     
  retq                                  #  6     0x1a  1      OPC=retq            
                                                                                  
.size target, .-target
