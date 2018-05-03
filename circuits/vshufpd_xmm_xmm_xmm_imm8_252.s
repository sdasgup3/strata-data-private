  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label     
  vzeroall                          #  3     0xa   3      OPC=vzeroall        
  xorw %r9w, %r9w                   #  4     0xd   4      OPC=xorw_r16_r16    
  cmovpq %r8, %r13                  #  5     0x11  4      OPC=cmovpq_r64_r64  
  callq .move_064_128_r12_r13_xmm1  #  6     0x15  5      OPC=callq_label     
  retq                              #  7     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
