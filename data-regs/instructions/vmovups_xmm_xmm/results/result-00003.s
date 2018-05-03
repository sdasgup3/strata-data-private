  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label  
  vzeroall                            #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r8_r9_xmm1      #  3     0x8   5      OPC=callq_label  
  xorb %r8b, %r8b                     #  4     0xd   3      OPC=xorb_r8_r8   
  callq .move_r8b_to_byte_29_of_ymm1  #  5     0x10  5      OPC=callq_label  
  retq                                #  6     0x15  1      OPC=retq         
                                                                             
.size target, .-target
