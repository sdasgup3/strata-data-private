  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movdqu %xmm3, %xmm9                           #  2     0x5   5      OPC=movdqu_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13           #  3     0xa   5      OPC=callq_label        
  vmovshdup %xmm7, %xmm8                        #  4     0xf   4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1            #  5     0x13  5      OPC=callq_label        
  callq .move_64_128_xmm12_xmm13_xmm1           #  6     0x18  5      OPC=callq_label        
  retq                                          #  7     0x1d  1      OPC=retq               
                                                                                             
.size target, .-target
