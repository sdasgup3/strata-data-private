  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode            
.target:                                #        0     0      OPC=<label>       
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label   
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label   
  por %xmm9, %xmm11                     #  3     0xa   5      OPC=por_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label   
  orpd %xmm2, %xmm1                     #  5     0x14  4      OPC=orpd_xmm_xmm  
  retq                                  #  6     0x18  1      OPC=retq          
                                                                                
.size target, .-target
