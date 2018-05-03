  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .clear_cf                   #  1     0     5      OPC=callq_label              
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label              
  callq .move_128_064_xmm2_r12_r13  #  3     0xa   5      OPC=callq_label              
  vzeroall                          #  4     0xf   3      OPC=vzeroall                 
  vfmadd231sd %xmm8, %xmm0, %xmm1   #  5     0x12  5      OPC=vfmadd231sd_xmm_xmm_xmm  
  cmovaew %r12w, %r10w              #  6     0x17  5      OPC=cmovaew_r16_r16          
  callq .move_064_128_r10_r11_xmm1  #  7     0x1c  5      OPC=callq_label              
  retq                              #  8     0x21  1      OPC=retq                     
                                                                                       
.size target, .-target
