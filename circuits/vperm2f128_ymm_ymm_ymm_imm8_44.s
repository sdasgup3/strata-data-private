  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm3_r8_r9      #  1     0     5      OPC=callq_label  
  vzeroall                            #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r8_r9_xmm3      #  3     0x8   5      OPC=callq_label  
  por %xmm3, %xmm9                    #  4     0xd   5      OPC=por_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x12  5      OPC=callq_label  
  retq                                #  6     0x17  1      OPC=retq         
                                                                             
.size target, .-target
