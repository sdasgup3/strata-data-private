  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm3, %xmm14  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovlhps %xmm3, %xmm2, %xmm1   #  2     0x4  4      OPC=vmovlhps_xmm_xmm_xmm  
  vsubpd %ymm14, %ymm1, %ymm1    #  3     0x8  5      OPC=vsubpd_ymm_ymm_ymm    
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
