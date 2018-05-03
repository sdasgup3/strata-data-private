  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpslld %xmm3, %xmm2, %xmm10           #  2     0x5   4      OPC=vpslld_xmm_xmm_xmm  
  vpslld %xmm3, %xmm11, %xmm3           #  3     0x9   4      OPC=vpslld_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xd   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm12_xmm13  #  5     0x12  5      OPC=callq_label         
  callq .move_256_128_ymm3_xmm8_xmm9    #  6     0x17  5      OPC=callq_label         
  vpsllw %xmm9, %xmm8, %xmm13           #  7     0x1c  5      OPC=vpsllw_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  8     0x21  5      OPC=callq_label         
  retq                                  #  9     0x26  1      OPC=retq                
                                                                                      
.size target, .-target
