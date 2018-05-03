  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vfmadd132ps %xmm1, %xmm3, %xmm2  #  1     0     5      OPC=vfmadd132ps_xmm_xmm_xmm  
  movss %xmm2, %xmm1               #  2     0x5   4      OPC=movss_xmm_xmm            
  callq .move_128_064_xmm1_r8_r9   #  3     0x9   5      OPC=callq_label              
  vzeroall                         #  4     0xe   3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm1   #  5     0x11  5      OPC=callq_label              
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
