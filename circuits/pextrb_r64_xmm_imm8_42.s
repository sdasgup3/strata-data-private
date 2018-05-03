  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  callq .move_byte_10_of_ymm1_to_r9b  #  1     0    5      OPC=callq_label   
  xorq %rbx, %rbx                     #  2     0x5  3      OPC=xorq_r64_r64  
  xaddb %r9b, %bl                     #  3     0x8  4      OPC=xaddb_r8_r8   
  retq                                #  4     0xc  1      OPC=retq          
                                                                             
.size target, .-target
