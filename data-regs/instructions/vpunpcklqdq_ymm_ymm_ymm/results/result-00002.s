  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm1                 #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vmovddup %ymm3, %ymm0                 #  3     0x9   4      OPC=vmovddup_ymm_ymm         
  maxss %xmm12, %xmm1                   #  4     0xd   5      OPC=maxss_xmm_xmm            
  vpunpckhqdq %ymm0, %ymm1, %ymm1       #  5     0x12  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
