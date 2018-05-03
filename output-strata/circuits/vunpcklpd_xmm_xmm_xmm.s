  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  movq %xmm3, %r8                   #  1     0     5      OPC=movq_r64_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label   
  vzeroall                          #  3     0xa   3      OPC=vzeroall      
  movq %r8, %r11                    #  4     0xd   3      OPC=movq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label   
  retq                              #  6     0x15  1      OPC=retq          
                                                                            
.size target, .-target
