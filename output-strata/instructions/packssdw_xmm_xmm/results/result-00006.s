  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vmovaps %xmm2, %xmm13                 #  1     0     4      OPC=vmovaps_xmm_xmm        
  vmovdqa %xmm1, %xmm12                 #  2     0x4   4      OPC=vmovdqa_xmm_xmm        
  callq .move_128_256_xmm12_xmm13_ymm2  #  3     0x8   5      OPC=callq_label            
  vpackssdw %ymm13, %ymm2, %ymm3        #  4     0xd   5      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r10_r11      #  5     0x12  5      OPC=callq_label            
  callq .move_064_128_r10_r11_xmm1      #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
