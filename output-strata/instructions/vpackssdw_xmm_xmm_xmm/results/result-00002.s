  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovups %xmm3, %xmm9                #  1     0     4      OPC=vmovups_xmm_xmm        
  vmovupd %xmm2, %xmm13               #  2     0x4   4      OPC=vmovupd_xmm_xmm        
  vpackssdw %ymm9, %ymm13, %ymm1      #  3     0x8   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_byte_21_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label            
  callq .move_r8b_to_byte_16_of_ymm1  #  5     0x12  5      OPC=callq_label            
  retq                                #  6     0x17  1      OPC=retq                   
                                                                                       
.size target, .-target
