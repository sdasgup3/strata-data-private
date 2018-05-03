  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vpsraw %xmm3, %xmm13, %xmm9           #  2     0x5   4      OPC=vpsraw_xmm_xmm_xmm  
  vpsraw %xmm3, %xmm12, %xmm8           #  3     0x9   4      OPC=vpsraw_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2    #  4     0xd   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm12_xmm13  #  5     0x12  5      OPC=callq_label         
  callq .move_128_256_xmm12_xmm13_ymm3  #  6     0x17  5      OPC=callq_label         
  callq .move_256_128_ymm3_xmm12_xmm13  #  7     0x1c  5      OPC=callq_label         
  callq .move_128_256_xmm12_xmm13_ymm1  #  8     0x21  5      OPC=callq_label         
  retq                                  #  9     0x26  1      OPC=retq                
                                                                                      
.size target, .-target
