  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm5, %xmm9                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm9, %xmm9, %xmm2                 #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovd %xmm2, %ebx                             #  4     0xf   4      OPC=vmovd_r32_xmm          
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
