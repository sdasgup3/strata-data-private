  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm8, %xmm11, %xmm4                   #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  vhsubpd %xmm9, %xmm11, %xmm3                    #  3     0xa   5      OPC=vhsubpd_xmm_xmm_xmm   
  vphaddd %ymm4, %ymm3, %ymm1                     #  4     0xf   5      OPC=vphaddd_ymm_ymm_ymm   
  retq                                            #  5     0x14  1      OPC=retq                  
                                                                                                  
.size target, .-target
