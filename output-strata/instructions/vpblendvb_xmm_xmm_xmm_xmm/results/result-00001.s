  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                   #  Line  RIP   Bytes  Opcode                         
.target:                                 #        0     0      OPC=<label>                    
  callq .move_128_64_xmm2_xmm12_xmm13    #  1     0     5      OPC=callq_label                
  vmovdqu %xmm12, %xmm1                  #  2     0x5   5      OPC=vmovdqu_xmm_xmm            
  callq .move_128_64_xmm3_xmm8_xmm9      #  3     0xa   5      OPC=callq_label                
  callq .move_64_128_xmm8_xmm9_xmm2      #  4     0xf   5      OPC=callq_label                
  vmovupd %xmm4, %xmm11                  #  5     0x14  4      OPC=vmovupd_xmm_xmm            
  callq .move_64_128_xmm8_xmm9_xmm1      #  6     0x18  5      OPC=callq_label                
  vmovdqu %xmm2, %xmm2                   #  7     0x1d  4      OPC=vmovdqu_xmm_xmm            
  callq .move_64_128_xmm12_xmm13_xmm2    #  8     0x21  5      OPC=callq_label                
  vpblendvb %ymm11, %ymm1, %ymm2, %ymm1  #  9     0x26  6      OPC=vpblendvb_ymm_ymm_ymm_ymm  
  retq                                   #  10    0x2c  1      OPC=retq                       
                                                                                              
.size target, .-target
