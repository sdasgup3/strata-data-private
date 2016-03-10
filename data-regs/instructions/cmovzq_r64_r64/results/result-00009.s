  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode              
.target:                            #        0    0      OPC=<label>         
  cmoveq %rcx, %rbx                 #  1     0    4      OPC=cmoveq_r64_r64  
  callq .move_byte_4_of_rbx_to_r9b  #  2     0x4  5      OPC=callq_label     
  callq .move_r9b_to_byte_4_of_rbx  #  3     0x9  5      OPC=callq_label     
  retq                              #  4     0xe  1      OPC=retq            
                                                                             
.size target, .-target
