  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpcklqdq %xmm3, %xmm2, %xmm10  #  1     0    4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmaxps %xmm10, %xmm10, %xmm1      #  2     0x4  5      OPC=vmaxps_xmm_xmm_xmm       
  retq                              #  3     0x9  1      OPC=retq                     
                                                                                      
.size target, .-target
