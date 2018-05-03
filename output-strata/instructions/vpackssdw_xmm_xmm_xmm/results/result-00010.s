  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vmovapd %xmm3, %xmm1               #  1     0     4      OPC=vmovapd_xmm_xmm        
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  callq .move_64_128_xmm8_xmm9_xmm1  #  3     0x9   5      OPC=callq_label            
  vmovdqu %xmm2, %xmm10              #  4     0xe   4      OPC=vmovdqu_xmm_xmm        
  vpackssdw %ymm1, %ymm10, %ymm1     #  5     0x12  4      OPC=vpackssdw_ymm_ymm_ymm  
  retq                               #  6     0x16  1      OPC=retq                   
                                                                                      
.size target, .-target
