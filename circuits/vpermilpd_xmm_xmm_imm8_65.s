  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1       #  2     0x5   5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label            
  movups %xmm12, %xmm14                #  4     0xf   4      OPC=movups_xmm_xmm         
  vunpcklpd %xmm14, %xmm13, %xmm1      #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
