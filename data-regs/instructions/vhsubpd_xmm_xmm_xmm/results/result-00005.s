  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  punpcklqdq %xmm3, %xmm12             #  2     0x5   5      OPC=punpcklqdq_xmm_xmm       
  vpunpckhqdq %xmm3, %xmm2, %xmm1      #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vsubpd %xmm1, %xmm12, %xmm1          #  4     0xe   4      OPC=vsubpd_xmm_xmm_xmm       
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
