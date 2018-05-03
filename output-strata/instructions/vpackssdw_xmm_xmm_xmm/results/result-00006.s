  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovups %xmm3, %xmm1                #  1     0     4      OPC=vmovups_xmm_xmm        
  callq .move_byte_31_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label            
  vmovups %xmm2, %xmm4                #  3     0x9   4      OPC=vmovups_xmm_xmm        
  callq .move_r8b_to_byte_31_of_ymm1  #  4     0xd   5      OPC=callq_label            
  vpackssdw %ymm1, %ymm4, %ymm1       #  5     0x12  4      OPC=vpackssdw_ymm_ymm_ymm  
  retq                                #  6     0x16  1      OPC=retq                   
                                                                                       
.size target, .-target
