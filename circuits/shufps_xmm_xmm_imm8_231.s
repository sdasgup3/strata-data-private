  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label      
  vmovapd %xmm5, %xmm9                            #  3     0xa   4      OPC=vmovapd_xmm_xmm  
  movddup %xmm7, %xmm8                            #  4     0xe   5      OPC=movddup_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label      
  retq                                            #  6     0x18  1      OPC=retq             
                                                                                             
.size target, .-target
