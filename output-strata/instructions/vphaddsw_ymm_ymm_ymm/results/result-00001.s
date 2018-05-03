  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vphaddsw %xmm3, %xmm2, %xmm10         #  3     0xa   5      OPC=vphaddsw_xmm_xmm_xmm  
  vphaddsw %xmm11, %xmm13, %xmm11       #  4     0xf   5      OPC=vphaddsw_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
