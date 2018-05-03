  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label               
  vfnmsub231ps %xmm3, %xmm1, %xmm2  #  2     0x5   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vcvtsi2ssl %r8d, %xmm1, %xmm1     #  3     0xa   5      OPC=vcvtsi2ssl_xmm_xmm_r32    
  movss %xmm2, %xmm1                #  4     0xf   4      OPC=movss_xmm_xmm             
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
