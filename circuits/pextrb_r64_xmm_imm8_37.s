  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_5_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  shlb $0x1, %bl                     #  3     0xf   2      OPC=shlb_r8_one     
  addb %r8b, %bl                     #  4     0x11  3      OPC=addb_r8_r8      
  retq                               #  5     0x14  1      OPC=retq            
                                                                               
.size target, .-target
