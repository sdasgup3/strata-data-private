  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm10, %xmm9, %xmm6                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11             #  3     0xa   5      OPC=callq_label            
  vunpcklpd %xmm6, %xmm11, %xmm1                  #  4     0xf   4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
