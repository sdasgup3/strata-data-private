  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  movzbl %bl, %r9d                    #  1     0     4      OPC=movzbl_r32_r8  
  callq .move_128_064_xmm2_r10_r11    #  2     0x4   5      OPC=callq_label    
  vzeroall                            #  3     0x9   3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm1    #  4     0xc   5      OPC=callq_label    
  callq .move_r9b_to_byte_11_of_ymm1  #  5     0x11  5      OPC=callq_label    
  retq                                #  6     0x16  1      OPC=retq           
                                                                               
.size target, .-target
