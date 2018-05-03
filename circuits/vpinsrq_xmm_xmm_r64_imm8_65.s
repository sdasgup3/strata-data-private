  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label   
  movq %rbx, %r13                   #  2     0x5   3      OPC=movq_r64_r64  
  vzeroall                          #  3     0x8   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm1  #  4     0xb   5      OPC=callq_label   
  retq                              #  5     0x10  1      OPC=retq          
                                                                            
.size target, .-target
