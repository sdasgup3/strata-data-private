  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_byte_4_of_rbx_to_r8b  #  1     0     5      OPC=callq_label   
  xorw %ax, %ax                     #  2     0x5   3      OPC=xorw_r16_r16  
  callq .move_r8b_to_byte_4_of_rbx  #  3     0x8   5      OPC=callq_label   
  xorw %ax, %bx                     #  4     0xd   3      OPC=xorw_r16_r16  
  salq $0x1, %rbx                   #  5     0x10  3      OPC=salq_r64_one  
  retq                              #  6     0x13  1      OPC=retq          
                                                                            
.size target, .-target
