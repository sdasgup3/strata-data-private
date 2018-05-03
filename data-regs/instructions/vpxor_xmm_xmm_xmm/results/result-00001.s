  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label   
  xorq %r10, %r12                   #  3     0xa   3      OPC=xorq_r64_r64  
  xorq %r11, %r13                   #  4     0xd   3      OPC=xorq_r64_r64  
  vzeroall                          #  5     0x10  3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm1  #  6     0x13  5      OPC=callq_label   
  retq                              #  7     0x18  1      OPC=retq          
                                                                            
.size target, .-target
