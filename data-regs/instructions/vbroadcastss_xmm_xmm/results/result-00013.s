  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  movlhps %xmm2, %xmm2                            #  1     0     3      OPC=movlhps_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  2     0x3   5      OPC=callq_label      
  vzeroall                                        #  3     0x8   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1                  #  4     0xb   5      OPC=callq_label      
  callq .move_128_64_xmm1_xmm10_xmm11             #  5     0x10  5      OPC=callq_label      
  callq .move_128_64_xmm1_xmm8_xmm9               #  6     0x15  5      OPC=callq_label      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1a  5      OPC=callq_label      
  retq                                            #  8     0x1f  1      OPC=retq             
                                                                                             
.size target, .-target
