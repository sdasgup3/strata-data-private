  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label    
  vzeroall                          #  3     0xa   3      OPC=vzeroall       
  xchgq %r9, %r12                   #  4     0xd   3      OPC=xchgq_r64_r64  
  callq .move_064_128_r12_r13_xmm2  #  5     0x10  5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm1    #  6     0x15  5      OPC=callq_label    
  subpd %xmm2, %xmm1                #  7     0x1a  4      OPC=subpd_xmm_xmm  
  retq                              #  8     0x1e  1      OPC=retq           
                                                                             
.size target, .-target
