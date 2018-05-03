  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  movsd %xmm3, %xmm2                   #  1     0     4      OPC=movsd_xmm_xmm          
  callq .move_128_064_xmm2_r12_r13     #  2     0x4   5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm2     #  3     0x9   5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm11, %xmm1       #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target