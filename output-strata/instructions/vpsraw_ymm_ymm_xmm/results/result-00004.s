  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  vpsraw %xmm3, %xmm9, %xmm13           #  2     0x5   4      OPC=vpsraw_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2    #  3     0x9   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm2  #  5     0x13  5      OPC=callq_label         
  vpsraw %xmm3, %xmm2, %xmm12           #  6     0x18  4      OPC=vpsraw_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1c  5      OPC=callq_label         
  retq                                  #  8     0x21  1      OPC=retq                
                                                                                      
.size target, .-target