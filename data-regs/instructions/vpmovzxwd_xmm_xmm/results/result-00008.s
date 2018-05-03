  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm2, %xmm1                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  vpmovzxwq %xmm9, %xmm6                          #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm    
  vhsubps %xmm6, %xmm1, %xmm1                     #  4     0xf   4      OPC=vhsubps_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                 
                                                                                                 
.size target, .-target
