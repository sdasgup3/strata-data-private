  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm1_xmm12_xmm13           #  2     0x5   5      OPC=callq_label         
  movq %xmm12, %xmm1                            #  3     0xa   5      OPC=movq_xmm_xmm        
  punpckhqdq %xmm6, %xmm1                       #  4     0xf   4      OPC=punpckhqdq_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
