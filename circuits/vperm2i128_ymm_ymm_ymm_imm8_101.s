  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovapd %xmm11, %xmm12                #  2     0x5   5      OPC=vmovapd_xmm_xmm  
  vmovupd %ymm3, %ymm13                 #  3     0xa   4      OPC=vmovupd_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                  #  5     0x13  1      OPC=retq             
                                                                                   
.size target, .-target