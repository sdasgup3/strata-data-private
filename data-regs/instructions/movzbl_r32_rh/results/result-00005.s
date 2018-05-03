  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movsbw %ah, %ax   #  1     0    4      OPC=movsbw_r16_rh   
  movzbq %al, %rax  #  2     0x4  4      OPC=movzbq_r64_r8   
  movswq %ax, %rbx  #  3     0x8  4      OPC=movswq_r64_r16  
  retq              #  4     0xc  1      OPC=retq            
                                                             
.size target, .-target
