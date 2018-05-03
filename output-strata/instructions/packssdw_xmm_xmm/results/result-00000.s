  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovaps %xmm1, %xmm11                #  1     0     4      OPC=vmovaps_xmm_xmm        
  vmovaps %xmm2, %xmm8                 #  2     0x4   4      OPC=vmovaps_xmm_xmm        
  vpackssdw %ymm8, %ymm11, %ymm2       #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xd   5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
