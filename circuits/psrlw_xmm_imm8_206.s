  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  pxor %xmm4, %xmm1                             #  2     0x5  4      OPC=pxor_xmm_xmm      
  pmovzxbq %xmm1, %xmm1                         #  3     0x9  5      OPC=pmovzxbq_xmm_xmm  
  retq                                          #  4     0xe  1      OPC=retq              
                                                                                           
.size target, .-target
