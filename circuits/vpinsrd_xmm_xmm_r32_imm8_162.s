  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovd %ebx, %xmm15                   #  2     0x5   4      OPC=vmovd_xmm_r32            
  vmovss %xmm15, %xmm13, %xmm1         #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm1, %xmm12, %xmm1     #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
