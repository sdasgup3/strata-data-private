  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0    5      OPC=callq_label       
  unpckhpd %xmm9, %xmm2               #  2     0x5  5      OPC=unpckhpd_xmm_xmm  
  vmovddup %ymm2, %ymm1               #  3     0xa  4      OPC=vmovddup_ymm_ymm  
  retq                                #  4     0xe  1      OPC=retq              
                                                                                 
.size target, .-target
