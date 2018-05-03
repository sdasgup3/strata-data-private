  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  xchgb %bh, %bl                      #  1     0     2      OPC=xchgb_r8_rh  
  callq .move_016_008_bx_r8b_r9b      #  2     0x2   5      OPC=callq_label  
  callq .move_r9b_to_byte_12_of_ymm1  #  3     0x7   5      OPC=callq_label  
  callq .move_r9b_to_byte_13_of_ymm1  #  4     0xc   5      OPC=callq_label  
  callq .move_r8b_to_byte_13_of_ymm1  #  5     0x11  5      OPC=callq_label  
  retq                                #  6     0x16  1      OPC=retq         
                                                                             
.size target, .-target
