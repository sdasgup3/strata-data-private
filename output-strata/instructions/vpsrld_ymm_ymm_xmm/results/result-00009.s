  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vpsrld %xmm3, %xmm13, %xmm11          #  2     0x5   4      OPC=vpsrld_xmm_xmm_xmm  
  vpsrld %xmm3, %xmm12, %xmm10          #  3     0x9   4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target