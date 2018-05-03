  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  setle %dh        #  2     0x2  3      OPC=setle_rh      
  adcb %dh, %al    #  3     0x5  2      OPC=adcb_r8_rh    
  addq %rax, %rbx  #  4     0x7  3      OPC=addq_r64_r64  
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
