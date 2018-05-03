  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm1             #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm1, %xmm10       #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmaxps %xmm2, %xmm2, %xmm11           #  4     0xf   4      OPC=vmaxps_xmm_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label            
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
