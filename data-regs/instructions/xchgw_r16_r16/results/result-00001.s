  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .move_016_008_bx_r8b_r9b    #  1     0     5      OPC=callq_label  
  callq .move_016_008_cx_r12b_r13b  #  2     0x5   5      OPC=callq_label  
  callq .move_008_016_r12b_r13b_bx  #  3     0xa   5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_cx    #  4     0xf   5      OPC=callq_label  
  retq                              #  5     0x14  1      OPC=retq         
                                                                           
.size target, .-target
