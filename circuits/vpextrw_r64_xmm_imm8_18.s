  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x1, %rbx                           #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  xchgw %dx, %ax                            #  3     0xf   2      OPC=xchgw_ax_r16    
  xchgw %bx, %ax                            #  4     0x11  3      OPC=xchgw_r16_r16   
  retq                                      #  5     0x14  1      OPC=retq            
                                                                                      
.size target, .-target
