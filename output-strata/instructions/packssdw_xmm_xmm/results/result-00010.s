  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovdqa %xmm2, %xmm6                            #  1     0     4      OPC=vmovdqa_xmm_xmm        
  vmovapd %xmm1, %xmm4                            #  2     0x4   4      OPC=vmovapd_xmm_xmm        
  vpackssdw %ymm6, %ymm4, %ymm2                   #  3     0x8   4      OPC=vpackssdw_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xc   5      OPC=callq_label            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
