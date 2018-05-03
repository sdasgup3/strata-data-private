  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode           
.target:                                        #        0     0      OPC=<label>      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0xa   5      OPC=callq_label  
  callq .move_r8b_to_byte_8_of_ymm1             #  4     0xf   5      OPC=callq_label  
  retq                                          #  5     0x14  1      OPC=retq         
                                                                                       
.size target, .-target
