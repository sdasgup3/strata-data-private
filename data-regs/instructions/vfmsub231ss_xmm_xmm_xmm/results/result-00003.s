  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm10_xmm11           #  2     0x5   5      OPC=callq_label              
  vfmsub132ps %xmm10, %xmm1, %xmm4              #  3     0xa   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vmovss %xmm4, %xmm1, %xmm1                    #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm       
  retq                                          #  5     0x13  1      OPC=retq                     
                                                                                                   
.size target, .-target
