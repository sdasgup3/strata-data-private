  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm12, %ymm12           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm2, %ymm12, %ymm1        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1   #  4     0xe   5      OPC=callq_label            
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
