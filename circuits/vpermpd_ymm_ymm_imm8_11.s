  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm8, %ymm1           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1   #  3     0xa   5      OPC=callq_label           
  movhlps %xmm9, %xmm1                #  4     0xf   4      OPC=movhlps_xmm_xmm       
  retq                                #  5     0x13  1      OPC=retq                  
                                                                                      
.size target, .-target
