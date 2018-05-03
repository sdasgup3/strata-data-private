  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm13                      #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  movapd %xmm13, %xmm11                           #  3     0xa   5      OPC=movapd_xmm_xmm        
  punpckldq %xmm8, %xmm10                         #  4     0xf   5      OPC=punpckldq_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x14  5      OPC=callq_label           
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
