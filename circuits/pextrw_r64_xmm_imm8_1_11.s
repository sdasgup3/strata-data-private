  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  callq .move_032_016_edx_r8w_r9w           #  2     0x5   5      OPC=callq_label      
  xorq %rbx, %rbx                           #  3     0xa   3      OPC=xorq_r64_r64     
  callq .move_byte_6_of_ymm1_to_r9b         #  4     0xd   5      OPC=callq_label      
  cmovnbw %r9w, %bx                         #  5     0x12  5      OPC=cmovnbw_r16_r16  
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
