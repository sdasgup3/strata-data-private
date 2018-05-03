  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmsubadd231pd %xmm3, %xmm1, %xmm2  #  1     0     5      OPC=vfmsubadd231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9      #  2     0x5   5      OPC=callq_label                 
  vzeroall                            #  3     0xa   3      OPC=vzeroall                    
  callq .move_064_128_r8_r9_xmm1      #  4     0xd   5      OPC=callq_label                 
  retq                                #  5     0x12  1      OPC=retq                        
                                                                                            
.size target, .-target
