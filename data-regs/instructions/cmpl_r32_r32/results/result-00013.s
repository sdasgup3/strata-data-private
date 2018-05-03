  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  addb %al, %bl    #  2     0x3  2      OPC=addb_r8_r8    
  subl %ecx, %ebx  #  3     0x5  2      OPC=subl_r32_r32  
  retq             #  4     0x7  1      OPC=retq          
                                                          
.size target, .-target
