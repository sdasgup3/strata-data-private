  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmulps %xmm2, %xmm1, %xmm10          #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  vminps %xmm10, %xmm10, %xmm3         #  2     0x4   5      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target