  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  popcntl %ebx, %r13d  #  1     0    5      OPC=popcntl_r32_r32  
  negb %r13b           #  2     0x5  3      OPC=negb_r8          
  notl %ebx            #  3     0x8  2      OPC=notl_r32         
  incl %ebx            #  4     0xa  2      OPC=incl_r32         
  retq                 #  5     0xc  1      OPC=retq             
                                                                 
.size target, .-target
