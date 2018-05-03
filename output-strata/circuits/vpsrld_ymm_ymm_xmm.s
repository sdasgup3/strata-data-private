  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  vpsrld %xmm3, %xmm12, %xmm1           #  3     0xa   4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xe   5      OPC=callq_label         
  vpsrld %xmm3, %xmm11, %xmm13          #  5     0x13  4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label         
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
