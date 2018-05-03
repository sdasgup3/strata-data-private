  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                 
.target:                                          #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm1                          #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5  5      OPC=callq_label        
  vmovq %xmm9, %rbx                               #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                                            #  4     0xf  1      OPC=retq               
                                                                                              
.size target, .-target
