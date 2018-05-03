  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label           
  vzeroall                              #  2     0x5   3      OPC=vzeroall              
  callq .move_064_128_r8_r9_xmm2        #  3     0x8   5      OPC=callq_label           
  vpbroadcastq %xmm2, %xmm12            #  4     0xd   5      OPC=vpbroadcastq_xmm_xmm  
  vpxor %xmm0, %xmm12, %xmm13           #  5     0x12  4      OPC=vpxor_xmm_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label           
  retq                                  #  7     0x1b  1      OPC=retq                  
                                                                                        
.size target, .-target
