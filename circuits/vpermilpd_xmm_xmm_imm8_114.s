  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  vpmovsxwd %xmm2, %xmm1               #  1     0    5      OPC=vpmovsxwd_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5  5      OPC=callq_label        
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0xa  5      OPC=callq_label        
  retq                                 #  4     0xf  1      OPC=retq               
                                                                                   
.size target, .-target
