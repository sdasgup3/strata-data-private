  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %xmm13  #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  movss %xmm13, %xmm1         #  2     0x5  5      OPC=movss_xmm_xmm         
  unpckhpd %xmm2, %xmm1       #  3     0xa  4      OPC=unpckhpd_xmm_xmm      
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
