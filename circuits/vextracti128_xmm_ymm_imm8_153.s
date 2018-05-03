  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vcvttps2dq %xmm10, %xmm8              #  2     0x5   5      OPC=vcvttps2dq_xmm_xmm       
  vunpckhpd %xmm8, %xmm11, %xmm2        #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpcklqdq %xmm2, %xmm11, %xmm1      #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
