  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  unpckhpd %xmm3, %xmm2                 #  1     0     4      OPC=unpckhpd_xmm_xmm    
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  punpckhqdq %xmm13, %xmm11             #  4     0xe   5      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label         
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
