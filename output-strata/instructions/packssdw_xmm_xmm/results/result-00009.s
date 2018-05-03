  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovdqu %xmm1, %xmm15             #  1     0     4      OPC=vmovdqu_xmm_xmm        
  vmovaps %xmm2, %xmm7              #  2     0x4   4      OPC=vmovaps_xmm_xmm        
  vpackssdw %ymm7, %ymm15, %ymm3    #  3     0x8   4      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r12_r13  #  4     0xc   5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                              #  6     0x16  1      OPC=retq                   
                                                                                     
.size target, .-target
