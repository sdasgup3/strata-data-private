  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x7, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  xaddw %bx, %r8w                 #  3     0xf   5      OPC=xaddw_r16_r16   
  cmovpl %ebx, %ebx               #  4     0x14  3      OPC=cmovpl_r32_r32  
  retq                            #  5     0x17  1      OPC=retq            
                                                                            
.size target, .-target
