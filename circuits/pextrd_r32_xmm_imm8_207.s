  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx                #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  xchgl %r13d, %ebx                             #  3     0xf   3      OPC=xchgl_r32_r32   
  retq                                          #  4     0x12  1      OPC=retq            
                                                                                          
.size target, .-target
