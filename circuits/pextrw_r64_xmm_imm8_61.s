  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm6, %ymm15                       #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  vmovaps %xmm15, %xmm2                         #  3     0xa   5      OPC=vmovaps_xmm_xmm    
  callq .move_128_064_xmm2_r8_r9                #  4     0xf   5      OPC=callq_label        
  xorq %rbx, %rbx                               #  5     0x14  3      OPC=xorq_r64_r64       
  rclw $0x1, %bx                                #  6     0x17  3      OPC=rclw_r16_one       
  cmovngw %r9w, %bx                             #  7     0x1a  5      OPC=cmovngw_r16_r16    
  retq                                          #  8     0x1f  1      OPC=retq               
                                                                                             
.size target, .-target
