  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %cx, %rbx  #  1     0    4      OPC=movswq_r64_r16  
  retq              #  2     0x4  1      OPC=retq            
                                                             
.size target, .-target
