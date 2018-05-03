  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label    
  movzbl %r11b, %ebx                #  2     0x5  4      OPC=movzbl_r32_r8  
  retq                              #  3     0x9  1      OPC=retq           
                                                                            
.size target, .-target
