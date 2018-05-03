  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgb %al, %al    #  1     0    2      OPC=xchgb_r8_r8    
  xchgq %rax, %rbx  #  2     0x2  3      OPC=xchgq_r64_r64  
  retq              #  3     0x5  1      OPC=retq           
                                                            
.size target, .-target
