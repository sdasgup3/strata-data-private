  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode            
.target:                            #        0    0      OPC=<label>       
  callq .move_128_064_xmm1_r12_r13  #  1     0    5      OPC=callq_label   
  xorl %ebx, %ebx                   #  2     0x5  2      OPC=xorl_r32_r32  
  xorw %r13w, %bx                   #  3     0x7  4      OPC=xorw_r16_r16  
  retq                              #  4     0xb  1      OPC=retq          
                                                                           
.size target, .-target
