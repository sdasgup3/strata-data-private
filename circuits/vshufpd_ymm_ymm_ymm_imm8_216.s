  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  vunpckhpd %ymm3, %ymm3, %ymm12       #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label              
  vpunpcklqdq %ymm12, %ymm2, %ymm1     #  3     0x9  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  4     0xe  1      OPC=retq                     
                                                                                         
.size target, .-target
