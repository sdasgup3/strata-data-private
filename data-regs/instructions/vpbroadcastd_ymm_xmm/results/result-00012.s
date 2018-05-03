  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label           
  vzeroall                              #  2     0x5   3      OPC=vzeroall              
  callq .move_064_128_r10_r11_xmm2      #  3     0x8   5      OPC=callq_label           
  vpbroadcastd %xmm2, %xmm11            #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm  
  vxorps %xmm12, %xmm11, %xmm10         #  5     0x12  5      OPC=vxorps_xmm_xmm_xmm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label           
  retq                                  #  7     0x1c  1      OPC=retq                  
                                                                                        
.size target, .-target
