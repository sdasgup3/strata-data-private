  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm1, %xmm2  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vorps %xmm2, %xmm2, %xmm3     #  2     0x4  4      OPC=vorps_xmm_xmm_xmm     
  punpcklqdq %xmm3, %xmm1       #  3     0x8  4      OPC=punpcklqdq_xmm_xmm    
  retq                          #  4     0xc  1      OPC=retq                  
                                                                               
.size target, .-target
