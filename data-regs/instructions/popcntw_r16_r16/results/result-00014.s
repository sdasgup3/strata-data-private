  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movzwl %cx, %r8d   #  1     0    4      OPC=movzwl_r32_r16   
  popcntq %r8, %rbx  #  2     0x4  5      OPC=popcntq_r64_r64  
  callq .clear_sf    #  3     0x9  5      OPC=callq_label      
  retq               #  4     0xe  1      OPC=retq             
                                                               
.size target, .-target
