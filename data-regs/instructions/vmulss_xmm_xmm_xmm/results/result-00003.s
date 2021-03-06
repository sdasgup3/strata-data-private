  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  vmaxss %xmm2, %xmm2, %xmm1           #  2     0x5  4      OPC=vmaxss_xmm_xmm_xmm  
  mulss %xmm10, %xmm1                  #  3     0x9  5      OPC=mulss_xmm_xmm       
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
