  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm2    #  2     0x5   5      OPC=callq_label         
  vpsrlq %xmm3, %xmm9, %xmm11           #  3     0xa   4      OPC=vpsrlq_xmm_xmm_xmm  
  vpsrlq %xmm3, %xmm2, %xmm10           #  4     0xe   4      OPC=vpsrlq_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
