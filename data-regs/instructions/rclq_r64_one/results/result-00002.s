  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xchgb %bl, %bl   #  1     0    2      OPC=xchgb_r8_r8   
  adcq %rbx, %rbx  #  2     0x2  3      OPC=adcq_r64_r64  
  retq             #  3     0x5  1      OPC=retq          
                                                          
.size target, .-target
