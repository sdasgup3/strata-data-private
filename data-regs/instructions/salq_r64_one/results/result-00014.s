  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  xorb %ah, %bl    #  2     0x3  2      OPC=xorb_r8_rh    
  adcq %rbx, %rbx  #  3     0x5  3      OPC=adcq_r64_r64  
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
