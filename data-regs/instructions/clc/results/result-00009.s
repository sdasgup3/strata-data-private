  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  adcb %al, %al    #  2     0x3  2      OPC=adcb_r8_r8    
  adcl %eax, %eax  #  3     0x5  2      OPC=adcl_r32_r32  
  retq             #  4     0x7  1      OPC=retq          
                                                          
.size target, .-target
