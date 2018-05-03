  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label      
  callq .move_064_128_r8_r9_xmm3     #  2     0x5   5      OPC=callq_label      
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0xa   5      OPC=callq_label      
  vmovq %xmm9, %xmm1                 #  4     0xf   5      OPC=vmovq_xmm_xmm    
  movlhps %xmm8, %xmm1               #  5     0x14  4      OPC=movlhps_xmm_xmm  
  retq                               #  6     0x18  1      OPC=retq             
                                                                                
.size target, .-target
