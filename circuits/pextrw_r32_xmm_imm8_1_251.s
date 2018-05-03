  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %ymm3                          #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r8_r9                  #  3     0xa   5      OPC=callq_label        
  movl %r9d, %ebx                                 #  4     0xf   3      OPC=movl_r32_r32       
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
