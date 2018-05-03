  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovsldup %xmm3, %xmm1                          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm1, %xmm2, %xmm3                   #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklps %xmm3, %xmm1, %xmm1                   #  3     0x8   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xc   5      OPC=callq_label            
  movss %xmm8, %xmm1                              #  5     0x11  5      OPC=movss_xmm_xmm          
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
