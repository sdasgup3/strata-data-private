  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpmovzxwq %xmm11, %ymm12             #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm      
  vunpckhpd %xmm12, %xmm10, %xmm3      #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13     #  4     0xf   5      OPC=callq_label            
  andnl %r13d, %r12d, %ebx             #  5     0x14  5      OPC=andnl_r32_r32_r32      
  retq                                 #  6     0x19  1      OPC=retq                   
                                                                                        
.size target, .-target
