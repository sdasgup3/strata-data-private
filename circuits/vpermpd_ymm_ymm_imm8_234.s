  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vminss %xmm9, %xmm9, %xmm13         #  2     0x5   5      OPC=vminss_xmm_xmm_xmm  
  movddup %xmm13, %xmm2               #  3     0xa   5      OPC=movddup_xmm_xmm     
  vmaxpd %ymm2, %ymm2, %ymm1          #  4     0xf   4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
