  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vpsrlw %xmm3, %xmm3, %xmm9            #  2     0x5   4      OPC=vpsrlw_xmm_xmm_xmm  
  vpsrld %xmm3, %xmm2, %xmm0            #  3     0x9   4      OPC=vpsrld_xmm_xmm_xmm  
  vpsrlw %xmm9, %xmm0, %xmm12           #  4     0xd   5      OPC=vpsrlw_xmm_xmm_xmm  
  vpsrld %xmm3, %xmm13, %xmm13          #  5     0x12  4      OPC=vpsrld_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label         
  retq                                  #  7     0x1b  1      OPC=retq                
                                                                                      
.size target, .-target
