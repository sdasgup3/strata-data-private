  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r12_r13     #  1     0     5      OPC=callq_label       
  vzeroall                             #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r12_r13_xmm1     #  3     0x8   5      OPC=callq_label       
  callq .move_128_64_xmm1_xmm12_xmm13  #  4     0xd   5      OPC=callq_label       
  vmovd %ebx, %xmm4                    #  5     0x12  4      OPC=vmovd_xmm_r32     
  unpcklps %xmm4, %xmm12               #  6     0x16  4      OPC=unpcklps_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1a  5      OPC=callq_label       
  retq                                 #  8     0x1f  1      OPC=retq              
                                                                                   
.size target, .-target
