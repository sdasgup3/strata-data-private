  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_byte_2_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label    
  movzbq %r8b, %rbx                  #  2     0x5  4      OPC=movzbq_r64_r8  
  retq                               #  3     0x9  1      OPC=retq           
                                                                             
.size target, .-target
