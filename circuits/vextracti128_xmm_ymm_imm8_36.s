  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vsqrtps %xmm13, %xmm4                #  2     0x5   5      OPC=vsqrtps_xmm_xmm          
  vpunpckhqdq %xmm1, %xmm4, %xmm1      #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
