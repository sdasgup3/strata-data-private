  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm8                        #  1     0     4      OPC=vmovshdup_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm8, %xmm15               #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm15, %xmm8, %xmm1                #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm   
  movss %xmm7, %xmm1                            #  5     0x12  4      OPC=movss_xmm_xmm           
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
