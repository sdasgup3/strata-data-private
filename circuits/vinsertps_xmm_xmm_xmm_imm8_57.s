  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label              
  orw %r10w, %r10w                                #  2     0x5   4      OPC=orw_r16_r16              
  callq .move_064_128_r10_r11_xmm1                #  3     0x9   5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label              
  vxorps %xmm1, %xmm8, %xmm5                      #  5     0x13  4      OPC=vxorps_xmm_xmm_xmm       
  vpunpcklqdq %xmm10, %xmm5, %xmm1                #  6     0x17  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
