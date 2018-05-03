  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  vpmovsxdq %xmm2, %xmm11           #  1     0    5      OPC=vpmovsxdq_xmm_xmm       
  vpunpckhdq %xmm2, %xmm11, %xmm13  #  2     0x5  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm13, %xmm1             #  3     0x9  4      OPC=movlhps_xmm_xmm         
  retq                              #  4     0xd  1      OPC=retq                    
                                                                                     
.size target, .-target
