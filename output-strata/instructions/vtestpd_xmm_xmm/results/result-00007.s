  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label      
  callq .move_128_256_xmm8_xmm9_ymm3    #  2     0x5   5      OPC=callq_label      
  callq .move_128_64_xmm1_xmm10_xmm11   #  3     0xa   5      OPC=callq_label      
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xf   5      OPC=callq_label      
  vtestpd %ymm3, %ymm2                  #  5     0x14  5      OPC=vtestpd_ymm_ymm  
  retq                                  #  6     0x19  1      OPC=retq             
                                                                                   
.size target, .-target
