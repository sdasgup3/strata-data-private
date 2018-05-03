  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vmaxpd %xmm1, %xmm1, %xmm2           #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label          
  vmovups %xmm12, %xmm4                #  3     0x9   5      OPC=vmovups_xmm_xmm      
  vandnpd %xmm4, %xmm12, %xmm8         #  4     0xe   4      OPC=vandnpd_xmm_xmm_xmm  
  movapd %xmm8, %xmm1                  #  5     0x12  5      OPC=movapd_xmm_xmm       
  retq                                 #  6     0x17  1      OPC=retq                 
                                                                                      
.size target, .-target
