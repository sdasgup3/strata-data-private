  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpsraw %xmm3, %xmm11, %xmm13          #  2     0x5   4      OPC=vpsraw_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  vpsraw %xmm3, %xmm10, %xmm12          #  4     0xe   4      OPC=vpsraw_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
