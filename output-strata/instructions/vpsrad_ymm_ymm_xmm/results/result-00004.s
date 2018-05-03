  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpsrad %xmm3, %xmm2, %xmm8            #  1     0     4      OPC=vpsrad_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0x9   5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xe   5      OPC=callq_label         
  vpsrad %xmm3, %xmm13, %xmm9           #  5     0x13  4      OPC=vpsrad_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x17  5      OPC=callq_label         
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
