  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label       
  vzeroall                        #  2     0x5   3      OPC=vzeroall          
  movq %r8, %xmm12                #  3     0x8   5      OPC=movq_xmm_r64      
  pmovsxbd %xmm12, %xmm1          #  4     0xd   6      OPC=pmovsxbd_xmm_xmm  
  retq                            #  5     0x13  1      OPC=retq              
                                                                              
.size target, .-target
