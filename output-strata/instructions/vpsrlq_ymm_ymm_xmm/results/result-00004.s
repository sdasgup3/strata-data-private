  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpsrlq %xmm3, %xmm2, %xmm1            #  1     0     4      OPC=vpsrlq_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm8_xmm9    #  2     0x4   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  vpsrlq %xmm3, %xmm13, %xmm9           #  4     0xe   4      OPC=vpsrlq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label         
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
