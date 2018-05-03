  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP  Bytes  Opcode                 
.target:                              #        0    0      OPC=<label>            
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0    5      OPC=callq_label        
  callq .move_128_256_xmm8_xmm9_ymm2  #  2     0x5  5      OPC=callq_label        
  vmovmskps %ymm2, %rbx               #  3     0xa  4      OPC=vmovmskps_r64_ymm  
  retq                                #  4     0xe  1      OPC=retq               
                                                                                  
.size target, .-target
