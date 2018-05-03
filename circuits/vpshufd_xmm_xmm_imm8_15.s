  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label           
  movshdup %xmm13, %xmm3               #  3     0xa   5      OPC=movshdup_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm1    #  4     0xf   5      OPC=callq_label           
  vpbroadcastd %xmm1, %xmm8            #  5     0x14  5      OPC=vpbroadcastd_xmm_xmm  
  vmovsd %xmm3, %xmm8, %xmm1           #  6     0x19  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  7     0x1d  1      OPC=retq                  
                                                                                       
.size target, .-target
