  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwl %bx, %r8d     #  1     0    4      OPC=movzwl_r32_r16    
  cmovnlel %r8d, %ecx  #  2     0x4  4      OPC=cmovnlel_r32_r32  
  movzwq %cx, %rbx     #  3     0x8  4      OPC=movzwq_r64_r16    
  retq                 #  4     0xc  1      OPC=retq              
                                                                  
.size target, .-target
