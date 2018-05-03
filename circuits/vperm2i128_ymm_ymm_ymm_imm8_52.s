  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode           
.target:                                #        0     0      OPC=<label>      
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label  
  callq .move_64_128_xmm8_xmm9_xmm3     #  2     0x5   5      OPC=callq_label  
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0xa   5      OPC=callq_label  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label  
  retq                                  #  5     0x14  1      OPC=retq         
                                                                               
.size target, .-target
