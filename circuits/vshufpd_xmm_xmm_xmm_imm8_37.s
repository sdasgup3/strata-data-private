  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movsd %xmm3, %xmm2                #  1     0     4      OPC=movsd_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label    
  vzeroall                          #  3     0x9   3      OPC=vzeroall       
  xchgq %r12, %r13                  #  4     0xc   3      OPC=xchgq_r64_r64  
  callq .move_064_128_r12_r13_xmm1  #  5     0xf   5      OPC=callq_label    
  retq                              #  6     0x14  1      OPC=retq           
                                                                             
.size target, .-target
