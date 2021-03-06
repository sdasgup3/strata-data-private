  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm10, %ymm0           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  unpcklpd %xmm2, %xmm2                #  3     0xa   4      OPC=unpcklpd_xmm_xmm       
  vunpckhpd %ymm0, %ymm2, %ymm1        #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
