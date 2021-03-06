  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vminps %xmm8, %xmm9, %xmm1                      #  2     0x5   5      OPC=vminps_xmm_xmm_xmm  
  vmovddup %xmm3, %xmm8                           #  3     0xa   4      OPC=vmovddup_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
