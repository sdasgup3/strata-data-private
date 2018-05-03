  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgl %eax, %ebx  #  1     0    2      OPC=xchgl_r32_r32  
  xchgl %eax, %eax  #  2     0x2  2      OPC=xchgl_r32_r32  
  retq              #  3     0x4  1      OPC=retq           
                                                            
.size target, .-target
