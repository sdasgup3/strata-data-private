  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %xmm2, %xmm12           #  1     0     4      OPC=vmovdqu_xmm_xmm        
  vmovups %xmm1, %xmm2            #  2     0x4   4      OPC=vmovups_xmm_xmm        
  vpackssdw %ymm12, %ymm2, %ymm2  #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r8_r9  #  4     0xd   5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
