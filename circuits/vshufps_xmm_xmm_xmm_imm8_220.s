  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  unpcklps %xmm11, %xmm3               #  2     0x5   4      OPC=unpcklps_xmm_xmm      
  vmovhlps %xmm2, %xmm3, %xmm13        #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovss %xmm2, %xmm13, %xmm1          #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm    
  retq                                 #  5     0x11  1      OPC=retq                  
                                                                                       
.size target, .-target
