  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label     
  callq .move_128_64_xmm1_xmm8_xmm9     #  2     0x5   5      OPC=callq_label     
  callq .move_128_256_xmm8_xmm9_ymm2    #  3     0xa   5      OPC=callq_label     
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xf   5      OPC=callq_label     
  vptest %ymm1, %ymm2                   #  5     0x14  5      OPC=vptest_ymm_ymm  
  retq                                  #  6     0x19  1      OPC=retq            
                                                                                  
.size target, .-target
