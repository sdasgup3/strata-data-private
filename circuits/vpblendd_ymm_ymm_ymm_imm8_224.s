  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  vmovss %xmm13, %xmm9, %xmm13          #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xf   5      OPC=callq_label         
  retq                                  #  5     0x14  1      OPC=retq                
                                                                                      
.size target, .-target
