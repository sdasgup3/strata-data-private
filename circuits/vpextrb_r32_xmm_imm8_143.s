  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0    3      OPC=xorq_r64_r64  
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x3  5      OPC=callq_label   
  andw %bx, %bx                       #  3     0x8  3      OPC=andw_r16_r16  
  adcb %r9b, %bl                      #  4     0xb  3      OPC=adcb_r8_r8    
  retq                                #  5     0xe  1      OPC=retq          
                                                                             
.size target, .-target
