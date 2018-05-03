  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovaps %xmm3, %xmm1                #  1     0     4      OPC=vmovaps_xmm_xmm        
  vmovdqa %xmm2, %xmm10               #  2     0x4   4      OPC=vmovdqa_xmm_xmm        
  vpackssdw %ymm1, %ymm10, %ymm1      #  3     0x8   4      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_byte_31_of_ymm1_to_r8b  #  4     0xc   5      OPC=callq_label            
  callq .move_r8b_to_byte_26_of_ymm1  #  5     0x11  5      OPC=callq_label            
  retq                                #  6     0x16  1      OPC=retq                   
                                                                                       
.size target, .-target
