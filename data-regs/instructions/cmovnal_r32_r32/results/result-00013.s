  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  xchgl %ebx, %ecx     #  1     0    2      OPC=xchgl_r32_r32     
  cmovnbel %ecx, %ebx  #  2     0x2  3      OPC=cmovnbel_r32_r32  
  retq                 #  3     0x5  1      OPC=retq              
                                                                  
.size target, .-target
