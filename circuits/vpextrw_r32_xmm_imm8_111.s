  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm1                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label        
  callq .move_128_064_xmm1_r10_r11                #  4     0xf   5      OPC=callq_label        
  movd %xmm5, %ebx                                #  5     0x14  4      OPC=movd_r32_xmm       
  movw %r11w, %bx                                 #  6     0x18  4      OPC=movw_r16_r16       
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
