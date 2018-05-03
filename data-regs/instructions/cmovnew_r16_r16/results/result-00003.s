  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  movsbl %bh, %edx                 #  1     0     3      OPC=movsbl_r32_rh    
  callq .move_064_032_rdx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  xchgw %r9w, %cx                  #  3     0x8   4      OPC=xchgw_r16_r16    
  cmovnzl %r9d, %ebx               #  4     0xc   4      OPC=cmovnzl_r32_r32  
  retq                             #  5     0x10  1      OPC=retq             
                                                                              
.size target, .-target
