  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode               
.target:                          #        0    0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0    5      OPC=callq_label      
  vmovups %ymm3, %ymm1            #  2     0x5  4      OPC=vmovups_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1  #  3     0x9  5      OPC=callq_label      
  retq                            #  4     0xe  1      OPC=retq             
                                                                            
.size target, .-target
