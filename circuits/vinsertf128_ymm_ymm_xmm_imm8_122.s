  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  vpor %ymm2, %ymm2, %ymm1                        #  1     0     4      OPC=vpor_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  vmovddup %xmm8, %xmm8                           #  3     0x9   5      OPC=vmovddup_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label       
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
