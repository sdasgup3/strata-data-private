  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_128_256_xmm10_xmm11_ymm3  #  2     0x5   5      OPC=callq_label        
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0xa   5      OPC=callq_label        
  callq .move_128_256_xmm8_xmm9_ymm2    #  4     0xf   5      OPC=callq_label        
  vmovmskps %ymm2, %rbx                 #  5     0x14  4      OPC=vmovmskps_r64_ymm  
  retq                                  #  6     0x18  1      OPC=retq               
                                                                                     
.size target, .-target
