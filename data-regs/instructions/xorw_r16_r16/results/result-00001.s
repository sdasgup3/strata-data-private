  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %cx, %rdx  #  1     0    4      OPC=movswq_r64_r16  
  movswq %bx, %r13  #  2     0x4  4      OPC=movswq_r64_r16  
  xorq %rdx, %r13   #  3     0x8  3      OPC=xorq_r64_r64    
  movq %r13, %rbx   #  4     0xb  3      OPC=movq_r64_r64    
  retq              #  5     0xe  1      OPC=retq            
                                                             
.size target, .-target
