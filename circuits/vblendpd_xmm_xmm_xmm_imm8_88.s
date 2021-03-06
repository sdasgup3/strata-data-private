  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label     
  vzeroall                          #  2     0x5   3      OPC=vzeroall        
  orw %r13w, %r13w                  #  3     0x8   4      OPC=orw_r16_r16     
  callq .move_064_128_r12_r13_xmm3  #  4     0xc   5      OPC=callq_label     
  movups %xmm3, %xmm1               #  5     0x11  3      OPC=movups_xmm_xmm  
  retq                              #  6     0x14  1      OPC=retq            
                                                                              
.size target, .-target
