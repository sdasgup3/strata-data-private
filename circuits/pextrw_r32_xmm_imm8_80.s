  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d    #  2     0x5   5      OPC=callq_label       
  movmskpd %xmm10, %ebx                           #  3     0xa   5      OPC=movmskpd_r32_xmm  
  xchgw %r10w, %bx                                #  4     0xf   4      OPC=xchgw_r16_r16     
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
