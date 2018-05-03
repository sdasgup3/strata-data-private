  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x7, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  vmovd %xmm1, %eax  #  2     0xa   4      OPC=vmovd_r32_xmm   
  xchgw %bx, %ax     #  3     0xe   2      OPC=xchgw_ax_r16    
  retq               #  4     0x10  1      OPC=retq            
                                                               
.size target, .-target
