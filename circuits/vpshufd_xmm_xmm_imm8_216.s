  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  vmovups %xmm2, %xmm1                 #  1     0    4      OPC=vmovups_xmm_xmm    
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4  5      OPC=callq_label        
  punpckldq %xmm11, %xmm1              #  3     0x9  5      OPC=punpckldq_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq               
                                                                                   
.size target, .-target
