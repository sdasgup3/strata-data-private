  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  mulsd %xmm2, %xmm10                  #  2     0x5   5      OPC=mulsd_xmm_xmm   
  haddpd %xmm1, %xmm10                 #  3     0xa   5      OPC=haddpd_xmm_xmm  
  movq %xmm10, %xmm1                   #  4     0xf   5      OPC=movq_xmm_xmm    
  retq                                 #  5     0x14  1      OPC=retq            
                                                                                 
.size target, .-target
