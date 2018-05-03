  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vmovups %xmm2, %xmm12              #  1     0     4      OPC=vmovups_xmm_xmm        
  vmovups %xmm1, %xmm13              #  2     0x4   4      OPC=vmovups_xmm_xmm        
  vpackssdw %ymm12, %ymm13, %ymm3    #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  4     0xd   5      OPC=callq_label            
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target