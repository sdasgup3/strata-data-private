  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label   
  vzeroall                            #  2     0x5   3      OPC=vzeroall      
  callq .move_byte_3_of_rbx_to_r9b    #  3     0x8   5      OPC=callq_label   
  movw %bx, %r13w                     #  4     0xd   4      OPC=movw_r16_r16  
  callq .move_064_128_r12_r13_xmm1    #  5     0x11  5      OPC=callq_label   
  callq .move_r9b_to_byte_11_of_ymm1  #  6     0x16  5      OPC=callq_label   
  callq .move_032_016_ebx_r8w_r9w     #  7     0x1b  5      OPC=callq_label   
  callq .move_r9b_to_byte_10_of_ymm1  #  8     0x20  5      OPC=callq_label   
  retq                                #  9     0x25  1      OPC=retq          
                                                                              
.size target, .-target
