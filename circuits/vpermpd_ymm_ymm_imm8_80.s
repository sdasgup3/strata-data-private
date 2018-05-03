  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm8, %xmm14         #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vpbroadcastq %xmm9, %ymm1          #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm  
  movupd %xmm14, %xmm1               #  4     0xf   5      OPC=movupd_xmm_xmm        
  retq                               #  5     0x14  1      OPC=retq                  
                                                                                     
.size target, .-target
