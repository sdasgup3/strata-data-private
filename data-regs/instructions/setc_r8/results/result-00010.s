  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  adcl %ebx, %ebx                   #  2     0xa   2      OPC=adcl_r32_r32    
  callq .move_byte_3_of_rbx_to_r9b  #  3     0xc   5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx  #  4     0x11  5      OPC=callq_label     
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
