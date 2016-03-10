  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                 
.target:                                          #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm2                          #  1     0    5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5  5      OPC=callq_label        
  vmovd %xmm10, %ebx                              #  3     0xa  4      OPC=vmovd_r32_xmm      
  retq                                            #  4     0xe  1      OPC=retq               
                                                                                              
.size target, .-target
