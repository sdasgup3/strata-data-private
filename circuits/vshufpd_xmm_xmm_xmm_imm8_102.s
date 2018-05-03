  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vmovups %xmm9, %xmm3                 #  3     0xa   5      OPC=vmovups_xmm_xmm        
  vunpcklpd %xmm3, %xmm12, %xmm1       #  4     0xf   4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
