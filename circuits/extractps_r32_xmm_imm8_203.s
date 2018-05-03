  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                 
.target:                                        #        0    0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label        
  vpmovzxdq %xmm7, %ymm11                       #  2     0x5  5      OPC=vpmovzxdq_ymm_xmm  
  vmovd %xmm11, %ebx                            #  3     0xa  4      OPC=vmovd_r32_xmm      
  retq                                          #  4     0xe  1      OPC=retq               
                                                                                            
.size target, .-target
