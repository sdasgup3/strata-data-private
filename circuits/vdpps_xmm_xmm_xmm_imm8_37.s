  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label         
  vmulps %xmm5, %xmm9, %xmm1                      #  3     0xa   4      OPC=vmulps_xmm_xmm_xmm  
  haddps %xmm1, %xmm1                             #  4     0xe   4      OPC=haddps_xmm_xmm      
  retq                                            #  5     0x12  1      OPC=retq                
                                                                                                
.size target, .-target
