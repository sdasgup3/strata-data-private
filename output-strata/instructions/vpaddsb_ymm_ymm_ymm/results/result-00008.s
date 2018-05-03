  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label          
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  vpaddsb %xmm2, %xmm12, %xmm8          #  3     0xa   4      OPC=vpaddsb_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label          
  vpaddsb %xmm9, %xmm13, %xmm9          #  5     0x13  5      OPC=vpaddsb_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label          
  retq                                  #  7     0x1d  1      OPC=retq                 
                                                                                       
.size target, .-target
