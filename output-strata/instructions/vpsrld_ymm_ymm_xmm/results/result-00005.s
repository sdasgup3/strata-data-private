  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vpsrld %xmm3, %xmm9, %xmm1          #  2     0x5   4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0x9   5      OPC=callq_label         
  vpslld %xmm9, %xmm8, %xmm9          #  4     0xe   5      OPC=vpslld_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm8_xmm9  #  6     0x18  5      OPC=callq_label         
  vpsrld %xmm3, %xmm2, %xmm8          #  7     0x1d  4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  8     0x21  5      OPC=callq_label         
  retq                                #  9     0x26  1      OPC=retq                
                                                                                    
.size target, .-target
