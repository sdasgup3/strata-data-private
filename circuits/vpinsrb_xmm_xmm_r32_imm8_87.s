  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovss %xmm8, %xmm2, %xmm1                      #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b                  #  3     0xa   5      OPC=callq_label         
  callq .move_r8b_to_byte_7_of_ymm1               #  4     0xf   5      OPC=callq_label         
  retq                                            #  5     0x14  1      OPC=retq                
                                                                                                
.size target, .-target