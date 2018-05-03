  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x4, %rbx   #  1     0    10     OPC=movq_r64_imm64  
  movb %cl, %bl     #  2     0xa  2      OPC=movb_r8_r8      
  xchgl %ebx, %ebx  #  3     0xc  2      OPC=xchgl_r32_r32   
  retq              #  4     0xe  1      OPC=retq            
                                                             
.size target, .-target
