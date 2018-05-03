  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  movd %ebx, %xmm3                   #  2     0x5   4      OPC=movd_xmm_r32      
  unpcklps %xmm3, %xmm8              #  3     0x9   4      OPC=unpcklps_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xd   5      OPC=callq_label       
  retq                               #  5     0x12  1      OPC=retq              
                                                                                 
.size target, .-target
