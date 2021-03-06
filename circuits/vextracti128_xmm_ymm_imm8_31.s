  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                    
.target:                                #        0    0      OPC=<label>               
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0    5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm3   #  2     0x5  5      OPC=callq_label           
  vmovhlps %xmm3, %xmm11, %xmm1         #  3     0xa  4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                  #  4     0xe  1      OPC=retq                  
                                                                                       
.size target, .-target
