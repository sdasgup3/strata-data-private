  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vaddps %xmm7, %xmm6, %xmm2                    #  2     0x5   4      OPC=vaddps_xmm_xmm_xmm       
  vpmovzxwq %xmm7, %xmm4                        #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %ymm2, %ymm4, %ymm9               #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovq %xmm9, %rbx                             #  5     0x12  5      OPC=vmovq_r64_xmm            
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
