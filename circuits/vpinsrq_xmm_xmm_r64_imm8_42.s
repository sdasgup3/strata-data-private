  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label    
  vzeroall                           #  2     0x5   3      OPC=vzeroall       
  callq .move_byte_3_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label    
  xchgq %rbx, %r8                    #  4     0xd   3      OPC=xchgq_r64_r64  
  callq .move_064_128_r8_r9_xmm1     #  5     0x10  5      OPC=callq_label    
  retq                               #  6     0x15  1      OPC=retq           
                                                                              
.size target, .-target
