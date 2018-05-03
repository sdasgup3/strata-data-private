  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label             
  callq .move_064_128_r8_r9_xmm1  #  2     0x5   5      OPC=callq_label             
  vbroadcastss %xmm1, %xmm6       #  3     0xa   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm1, %xmm6, %xmm1  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                            #  5     0x13  1      OPC=retq                    
                                                                                    
.size target, .-target
