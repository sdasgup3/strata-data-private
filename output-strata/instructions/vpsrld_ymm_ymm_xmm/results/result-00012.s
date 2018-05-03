  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  vpsrld %xmm3, %xmm2, %xmm1            #  2     0x5   4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  vpsrld %xmm3, %xmm9, %xmm13           #  4     0xe   4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm2  #  5     0x12  5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm10_xmm11  #  6     0x17  5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x1c  5      OPC=callq_label         
  retq                                  #  8     0x21  1      OPC=retq                
                                                                                      
.size target, .-target
