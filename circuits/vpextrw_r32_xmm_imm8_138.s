  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rcx           #  2     0x5   5      OPC=callq_label     
  movq $0x6, %rbx                           #  3     0xa   10     OPC=movq_r64_imm64  
  orb %cl, %bh                              #  4     0x14  2      OPC=orb_rh_r8       
  xaddw %bx, %dx                            #  5     0x16  4      OPC=xaddw_r16_r16   
  retq                                      #  6     0x1a  1      OPC=retq            
                                                                                      
.size target, .-target
