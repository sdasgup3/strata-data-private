  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm10_xmm11       #  1     0     5      OPC=callq_label      
  movddup %xmm10, %xmm1                     #  2     0x5   5      OPC=movddup_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label      
  callq .move_032_064_r8d_r9d_rbx           #  4     0xf   5      OPC=callq_label      
  retq                                      #  5     0x14  1      OPC=retq             
                                                                                       
.size target, .-target
