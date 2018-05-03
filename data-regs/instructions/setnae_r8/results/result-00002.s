  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x8, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx  #  2     0xa   5      OPC=callq_label     
  xaddl %ebx, %ecx         #  3     0xf   3      OPC=xaddl_r32_r32   
  retq                     #  4     0x12  1      OPC=retq            
                                                                     
.size target, .-target
