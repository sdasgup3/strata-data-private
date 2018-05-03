  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovaps %xmm2, %xmm13                           #  1     0     4      OPC=vmovaps_xmm_xmm        
  vmovups %xmm1, %xmm14                           #  2     0x4   4      OPC=vmovups_xmm_xmm        
  vpackssdw %ymm13, %ymm14, %ymm2                 #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
