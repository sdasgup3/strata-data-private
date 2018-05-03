  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode             
.target:                  #        0    0      OPC=<label>        
  xchgl %ebx, %ecx        #  1     0    2      OPC=xchgl_r32_r32  
  orq %rbx, %rcx          #  2     0x2  3      OPC=orq_r64_r64    
  movq %rcx, %rbx         #  3     0x5  3      OPC=movq_r64_r64   
  callq .set_szp_for_ebx  #  4     0x8  5      OPC=callq_label    
  retq                    #  5     0xd  1      OPC=retq           
                                                                  
.size target, .-target
