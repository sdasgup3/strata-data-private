  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  2     0x5   5      OPC=callq_label          
  vandnps %xmm2, %xmm3, %xmm4                     #  3     0xa   4      OPC=vandnps_xmm_xmm_xmm  
  vandnpd %ymm2, %ymm4, %ymm1                     #  4     0xe   4      OPC=vandnpd_ymm_ymm_ymm  
  retq                                            #  5     0x12  1      OPC=retq                 
                                                                                                 
.size target, .-target
