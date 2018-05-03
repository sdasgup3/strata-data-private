  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %rsi   #  1     0    4      OPC=movswq_r64_r16  
  movswq %bx, %rbx   #  2     0x4  4      OPC=movswq_r64_r16  
  xorq %rbx, %rsi    #  3     0x8  3      OPC=xorq_r64_r64    
  movslq %esi, %rbx  #  4     0xb  3      OPC=movslq_r64_r32  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
