  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movswl %cx, %r13d    #  1     0    4      OPC=movswl_r32_r16   
  cmovnsl %r13d, %ebx  #  2     0x4  4      OPC=cmovnsl_r32_r32  
  retq                 #  3     0x8  1      OPC=retq             
                                                                 
.size target, .-target
