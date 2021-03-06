  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64   
  xchgl %eax, %ebx         #  2     0x3  2      OPC=xchgl_r32_r32  
  callq .read_pf_into_rbx  #  3     0x5  5      OPC=callq_label    
  clc                      #  4     0xa  1      OPC=clc            
  adcl %eax, %ebx          #  5     0xb  2      OPC=adcl_r32_r32   
  retq                     #  6     0xd  1      OPC=retq           
                                                                   
.size target, .-target
