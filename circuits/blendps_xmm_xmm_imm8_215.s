  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm10_xmm11           #  2     0x5   5      OPC=callq_label           
  vpmovsxdq %xmm11, %xmm4                       #  3     0xa   5      OPC=vpmovsxdq_xmm_xmm     
  vmovlhps %xmm2, %xmm4, %xmm6                  #  4     0xf   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label           
  movsd %xmm2, %xmm1                            #  6     0x18  4      OPC=movsd_xmm_xmm         
  retq                                          #  7     0x1c  1      OPC=retq                  
                                                                                                
.size target, .-target
