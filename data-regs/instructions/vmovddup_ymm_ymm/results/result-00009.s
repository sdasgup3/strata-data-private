  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9   #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vpbroadcastq %xmm9, %ymm1            #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm  
  vminps %xmm2, %xmm2, %xmm11          #  4     0xf   4      OPC=vminps_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target