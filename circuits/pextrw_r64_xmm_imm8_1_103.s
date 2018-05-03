  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32       
  vpmovzxwq %xmm11, %ymm1                         #  3     0x7   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  4     0xc   5      OPC=callq_label        
  cmovnbw %r9w, %bx                               #  5     0x11  5      OPC=cmovnbw_r16_r16    
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
