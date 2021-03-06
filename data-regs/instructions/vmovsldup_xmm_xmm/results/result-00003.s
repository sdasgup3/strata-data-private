  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm9, %xmm4          #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vbroadcastss %xmm2, %xmm1          #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  unpcklpd %xmm4, %xmm1              #  4     0xf   4      OPC=unpcklpd_xmm_xmm      
  retq                               #  5     0x13  1      OPC=retq                  
                                                                                     
.size target, .-target
