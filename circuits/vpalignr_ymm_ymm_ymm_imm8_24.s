  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_64_128_xmm10_xmm11_xmm2  #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %xmm10, %xmm2, %xmm9     #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpckhpd %ymm9, %ymm2, %ymm1        #  4     0xf   5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                                 #  5     0x14  1      OPC=retq                     
                                                                                          
.size target, .-target
