  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label       
  vzeroall                          #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r12_r13_xmm1  #  3     0x8   5      OPC=callq_label       
  vrsqrtps %ymm1, %ymm7             #  4     0xd   4      OPC=vrsqrtps_ymm_ymm  
  vmovups %xmm7, %xmm1              #  5     0x11  4      OPC=vmovups_xmm_xmm   
  retq                              #  6     0x15  1      OPC=retq              
                                                                                
.size target, .-target
