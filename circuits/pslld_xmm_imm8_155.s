  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm2    #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  vandnpd %xmm2, %xmm2, %xmm0  #  2     0x5  4      OPC=vandnpd_xmm_xmm_xmm   
  cvtpd2dq %xmm0, %xmm1        #  3     0x9  4      OPC=cvtpd2dq_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                  
                                                                              
.size target, .-target
