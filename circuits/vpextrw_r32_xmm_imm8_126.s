  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movq $0x1, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  vmovd %xmm7, %ecx                             #  3     0xf   4      OPC=vmovd_r32_xmm    
  subb %bh, %bl                                 #  4     0x13  2      OPC=subb_r8_rh       
  cmovnlw %cx, %bx                              #  5     0x15  4      OPC=cmovnlw_r16_r16  
  retq                                          #  6     0x19  1      OPC=retq             
                                                                                           
.size target, .-target