  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                  
.target:                                          #        0    0      OPC=<label>             
  unpcklps %xmm2, %xmm2                           #  1     0    3      OPC=unpcklps_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x3  5      OPC=callq_label         
  vmovss %xmm11, %xmm2, %xmm1                     #  3     0x8  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                            #  4     0xd  1      OPC=retq                
                                                                                               
.size target, .-target
