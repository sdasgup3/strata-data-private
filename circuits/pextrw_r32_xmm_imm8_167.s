  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0xa7, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0xf   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  4     0x14  5      OPC=callq_label     
  retq                                #  5     0x19  1      OPC=retq            
                                                                                
.size target, .-target
