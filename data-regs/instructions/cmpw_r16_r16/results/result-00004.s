  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  sbbw %cx, %bx    #  2     0x3  3      OPC=sbbw_r16_r16  
  retq             #  3     0x6  1      OPC=retq          
                                                          
.size target, .-target
