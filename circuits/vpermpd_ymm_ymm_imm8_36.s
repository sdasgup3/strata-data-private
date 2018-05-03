  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0    5      OPC=callq_label      
  movlhps %xmm8, %xmm9                #  2     0x5  4      OPC=movlhps_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x9  5      OPC=callq_label      
  retq                                #  4     0xe  1      OPC=retq             
                                                                                
.size target, .-target
