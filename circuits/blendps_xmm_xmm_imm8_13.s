  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmaxps %xmm13, %xmm13, %xmm0         #  2     0x5   5      OPC=vmaxps_xmm_xmm_xmm  
  movss %xmm12, %xmm1                  #  3     0xa   5      OPC=movss_xmm_xmm       
  punpcklqdq %xmm0, %xmm1              #  4     0xf   4      OPC=punpcklqdq_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
