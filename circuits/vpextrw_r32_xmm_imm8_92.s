  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  movq $0x80, %rbx                                #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0xa   5      OPC=callq_label     
  movd %xmm10, %ebp                               #  3     0xf   5      OPC=movd_r32_xmm    
  xchgw %bx, %bp                                  #  4     0x14  3      OPC=xchgw_r16_r16   
  retq                                            #  5     0x17  1      OPC=retq            
                                                                                            
.size target, .-target
