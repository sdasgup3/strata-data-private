  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_016_008_dx_r10b_r11b   #  1     0     5      OPC=callq_label  
  callq .move_064_032_rcx_r12d_r13d  #  2     0x5   5      OPC=callq_label  
  callq .move_032_064_r12d_r13d_rbx  #  3     0xa   5      OPC=callq_label  
  callq .move_008_016_r10b_r11b_cx   #  4     0xf   5      OPC=callq_label  
  shlq %cl, %rbx                     #  5     0x14  3      OPC=shlq_r64_cl  
  retq                               #  6     0x17  1      OPC=retq         
                                                                            
.size target, .-target
