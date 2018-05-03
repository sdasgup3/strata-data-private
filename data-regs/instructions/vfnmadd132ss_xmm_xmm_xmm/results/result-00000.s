  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vcvtpd2ps %xmm6, %xmm4                        #  2     0x5   4      OPC=vcvtpd2ps_xmm_xmm         
  vfnmsub213ps %xmm2, %xmm4, %xmm4              #  3     0x9   5      OPC=vfnmsub213ps_xmm_xmm_xmm  
  vfnmsub132ss %xmm3, %xmm4, %xmm1              #  4     0xe   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                      
                                                                                                    
.size target, .-target
