  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  vpsadbw %xmm13, %xmm11, %xmm13        #  3     0xa   5      OPC=vpsadbw_xmm_xmm_xmm  
  vpsadbw %xmm2, %xmm3, %xmm12          #  4     0xf   4      OPC=vpsadbw_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label          
  retq                                  #  6     0x18  1      OPC=retq                 
                                                                                       
.size target, .-target
