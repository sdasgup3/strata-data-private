  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm6, %xmm3                        #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  movq $0x3, %rbx                               #  4     0xf   10     OPC=movq_r64_imm64     
  xchgb %bl, %r11b                              #  5     0x19  3      OPC=xchgb_r8_r8        
  retq                                          #  6     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target