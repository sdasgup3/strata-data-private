  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  vmovdqa %xmm3, %xmm9                #  1     0    4      OPC=vmovdqa_xmm_xmm   
  vpor %xmm2, %xmm2, %xmm8            #  2     0x4  4      OPC=vpor_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x8  5      OPC=callq_label       
  retq                                #  4     0xd  1      OPC=retq              
                                                                                 
.size target, .-target