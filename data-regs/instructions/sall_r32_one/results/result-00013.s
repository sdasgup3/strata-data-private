  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgl %ebx, %ebx  #  1     0    2      OPC=xchgl_r32_r32  
  shll $0x1, %ebx   #  2     0x2  2      OPC=shll_r32_one   
  retq              #  3     0x4  1      OPC=retq           
                                                            
.size target, .-target
