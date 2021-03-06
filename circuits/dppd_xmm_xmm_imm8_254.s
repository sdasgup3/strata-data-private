  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vsqrtsd %xmm10, %xmm9, %xmm4                    #  2     0x5   5      OPC=vsqrtsd_xmm_xmm_xmm  
  xorpd %xmm12, %xmm12                            #  3     0xa   5      OPC=xorpd_xmm_xmm        
  vmulpd %xmm2, %xmm1, %xmm13                     #  4     0xf   4      OPC=vmulpd_xmm_xmm_xmm   
  haddpd %xmm4, %xmm13                            #  5     0x13  5      OPC=haddpd_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x18  5      OPC=callq_label          
  retq                                            #  7     0x1d  1      OPC=retq                 
                                                                                                 
.size target, .-target
