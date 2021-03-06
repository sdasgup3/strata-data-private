  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm2, %xmm6, %xmm14                 #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  vunpcklps %xmm14, %xmm3, %xmm3                #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm4, %xmm3, %xmm1                    #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
