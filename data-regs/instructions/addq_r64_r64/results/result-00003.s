  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode            
.target:                  #        0    0      OPC=<label>       
  xorq %rax, %rax         #  1     0    3      OPC=xorq_r64_r64  
  adcq %rcx, %rbx         #  2     0x3  3      OPC=adcq_r64_r64  
  callq .set_szp_for_rbx  #  3     0x6  5      OPC=callq_label   
  retq                    #  4     0xb  1      OPC=retq          
                                                                 
.size target, .-target
