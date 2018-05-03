  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode            
.target:                                        #        0    0      OPC=<label>       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label   
  xorq %rbx, %rbx                               #  2     0x5  3      OPC=xorq_r64_r64  
  xchgb %r13b, %bl                              #  3     0x8  3      OPC=xchgb_r8_r8   
  retq                                          #  4     0xb  1      OPC=retq          
                                                                                       
.size target, .-target
