  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm13              #  1     0     4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm13, %xmm1, %xmm5  #  2     0x4   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovddup %ymm5, %ymm13          #  3     0x9   4      OPC=vmovddup_ymm_ymm       
  movhlps %xmm13, %xmm1           #  4     0xd   4      OPC=movhlps_xmm_xmm        
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
