  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label           
  vmovhlps %xmm11, %xmm11, %xmm11      #  2     0x5  5      OPC=vmovhlps_xmm_xmm_xmm  
  cvtps2pd %xmm11, %xmm1               #  3     0xa  4      OPC=cvtps2pd_xmm_xmm      
  retq                                 #  4     0xe  1      OPC=retq                  
                                                                                      
.size target, .-target
