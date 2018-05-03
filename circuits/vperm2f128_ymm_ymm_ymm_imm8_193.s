  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0    5      OPC=callq_label         
  movups %xmm9, %xmm10                #  2     0x5  4      OPC=movups_xmm_xmm      
  vmaxss %xmm10, %xmm9, %xmm1         #  3     0x9  5      OPC=vmaxss_xmm_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
