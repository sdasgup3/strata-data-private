  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm7, %xmm2, %xmm1               #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  3     0x9   5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm1                #  4     0xe   5      OPC=callq_label              
  rsqrtss %xmm4, %xmm1                          #  5     0x13  4      OPC=rsqrtss_xmm_xmm          
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
