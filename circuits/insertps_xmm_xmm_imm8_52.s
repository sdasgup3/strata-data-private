  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm2, %ymm2                     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm2, %xmm6, %xmm8                 #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm8, %xmm1                         #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
