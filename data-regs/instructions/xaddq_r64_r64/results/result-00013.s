  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  addq %rbx, %rcx   #  1     0    3      OPC=addq_r64_r64     
  cmovbew %bx, %bx  #  2     0x3  4      OPC=cmovbew_r16_r16  
  xchgq %rcx, %rbx  #  3     0x7  3      OPC=xchgq_r64_r64    
  retq              #  4     0xa  1      OPC=retq             
                                                              
.size target, .-target
