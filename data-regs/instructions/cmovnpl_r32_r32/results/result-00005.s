  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  cmovpol %ecx, %ebx   #  1     0    3      OPC=cmovpol_r32_r32  
  popcntl %ebx, %r13d  #  2     0x3  5      OPC=popcntl_r32_r32  
  cmovzq %rbx, %rbx    #  3     0x8  4      OPC=cmovzq_r64_r64   
  retq                 #  4     0xc  1      OPC=retq             
                                                                 
.size target, .-target
