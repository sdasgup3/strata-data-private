  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm1  #  2     0x5   5      OPC=callq_label         
  vmovss %xmm1, %xmm3, %xmm1            #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm1              #  4     0xe   5      OPC=punpcklqdq_xmm_xmm  
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
