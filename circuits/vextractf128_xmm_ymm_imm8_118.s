  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovupd %xmm1, %xmm8           #  1     0    4      OPC=vmovupd_xmm_xmm       
  vmovlhps %xmm1, %xmm1, %xmm11  #  2     0x4  4      OPC=vmovlhps_xmm_xmm_xmm  
  vmaxss %xmm11, %xmm8, %xmm1    #  3     0x8  5      OPC=vmaxss_xmm_xmm_xmm    
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
