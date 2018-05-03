  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  punpckldq %xmm10, %xmm2                         #  2     0x5   5      OPC=punpckldq_xmm_xmm      
  vminsd %xmm2, %xmm2, %xmm12                     #  3     0xa   4      OPC=vminsd_xmm_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xe   5      OPC=callq_label            
  vunpckhps %xmm1, %xmm12, %xmm13                 #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
