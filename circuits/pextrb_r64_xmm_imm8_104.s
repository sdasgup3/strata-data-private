  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x7, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_8_of_ymm1_to_r9b  #  2     0xa   5      OPC=callq_label     
  xchgb %r9b, %bl                    #  3     0xf   3      OPC=xchgb_r8_r8     
  retq                               #  4     0x12  1      OPC=retq            
                                                                               
.size target, .-target
