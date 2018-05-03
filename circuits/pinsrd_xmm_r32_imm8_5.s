  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  movd %ebx, %xmm13                #  1     0    5      OPC=movd_xmm_r32           
  vunpcklps %xmm13, %xmm1, %xmm12  #  2     0x5  5      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm12, %xmm1              #  3     0xa  5      OPC=movsd_xmm_xmm          
  retq                             #  4     0xf  1      OPC=retq                   
                                                                                   
.size target, .-target
