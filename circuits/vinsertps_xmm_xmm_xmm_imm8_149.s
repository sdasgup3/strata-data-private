  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm6, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovapd %xmm3, %xmm10                         #  3     0x9   4      OPC=vmovapd_xmm_xmm         
  unpckhps %xmm10, %xmm7                        #  4     0xd   4      OPC=unpckhps_xmm_xmm        
  vmovsd %xmm7, %xmm1, %xmm1                    #  5     0x11  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target