  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  paddd %xmm2, %xmm2                #  1     0     4      OPC=paddd_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label    
  vmovq %r12, %xmm1                 #  3     0x9   5      OPC=vmovq_xmm_r64  
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label    
  retq                              #  5     0x13  1      OPC=retq           
                                                                             
.size target, .-target
