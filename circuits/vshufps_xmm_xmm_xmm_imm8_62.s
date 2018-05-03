  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vbroadcastss %xmm3, %ymm7         #  1     0    5      OPC=vbroadcastss_ymm_xmm     
  vunpckhps %xmm7, %xmm3, %xmm13    #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm13, %xmm2, %xmm1  #  3     0x9  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
