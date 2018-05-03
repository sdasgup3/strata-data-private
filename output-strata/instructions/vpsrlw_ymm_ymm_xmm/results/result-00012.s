  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpsrlw %xmm3, %xmm2, %xmm1            #  1     0     4      OPC=vpsrlw_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm8_xmm9    #  3     0x9   5      OPC=callq_label         
  vpsrlw %xmm3, %xmm11, %xmm9           #  4     0xe   4      OPC=vpsrlw_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label         
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
