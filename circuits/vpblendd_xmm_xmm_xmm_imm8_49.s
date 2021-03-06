  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r12_r13      #  2     0x5   5      OPC=callq_label    
  vzeroall                              #  3     0xa   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm3      #  4     0xd   5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm1        #  5     0x12  5      OPC=callq_label    
  callq .move_256_128_ymm3_xmm12_xmm13  #  6     0x17  5      OPC=callq_label    
  movss %xmm12, %xmm1                   #  7     0x1c  5      OPC=movss_xmm_xmm  
  retq                                  #  8     0x21  1      OPC=retq           
                                                                                 
.size target, .-target
