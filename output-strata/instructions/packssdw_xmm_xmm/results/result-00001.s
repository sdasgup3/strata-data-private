  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovups %xmm2, %xmm8                 #  1     0     4      OPC=vmovups_xmm_xmm        
  vmovapd %xmm1, %xmm5                 #  2     0x4   4      OPC=vmovapd_xmm_xmm        
  vpackssdw %ymm8, %ymm8, %ymm13       #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  vpackssdw %ymm13, %ymm5, %ymm4       #  4     0xd   5      OPC=vpackssdw_ymm_ymm_ymm  
  vmovups %xmm4, %xmm12                #  5     0x12  4      OPC=vmovups_xmm_xmm        
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                 #  7     0x1b  1      OPC=retq                   
                                                                                        
.size target, .-target
