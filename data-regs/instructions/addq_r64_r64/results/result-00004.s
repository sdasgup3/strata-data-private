  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rax  #  1     0     10     OPC=movq_r64_imm64  
  orq %rcx, %rax                  #  2     0xa   3      OPC=orq_r64_r64     
  adcq %rcx, %rbx                 #  3     0xd   3      OPC=adcq_r64_r64    
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target
