  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vpsrlq %xmm3, %xmm9, %xmm9          #  2     0x5   4      OPC=vpsrlq_xmm_xmm_xmm  
  vpsrlq %xmm3, %xmm2, %xmm8          #  3     0x9   4      OPC=vpsrlq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
