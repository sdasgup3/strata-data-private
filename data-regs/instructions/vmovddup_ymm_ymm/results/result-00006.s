  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm13, %ymm4            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  movddup %xmm12, %xmm4                 #  3     0xa   5      OPC=movddup_xmm_xmm       
  vmovupd %ymm4, %ymm1                  #  4     0xf   4      OPC=vmovupd_ymm_ymm       
  retq                                  #  5     0x13  1      OPC=retq                  
                                                                                        
.size target, .-target
