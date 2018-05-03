  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label          
  vzeroall                            #  2     0x5   3      OPC=vzeroall             
  callq .move_064_128_r12_r13_xmm1    #  3     0x8   5      OPC=callq_label          
  callq .move_byte_6_of_ymm1_to_r9b   #  4     0xd   5      OPC=callq_label          
  callq .move_r9b_to_byte_31_of_ymm1  #  5     0x12  5      OPC=callq_label          
  vsqrtss %xmm3, %xmm1, %xmm1         #  6     0x17  4      OPC=vsqrtss_xmm_xmm_xmm  
  retq                                #  7     0x1b  1      OPC=retq                 
                                                                                     
.size target, .-target
