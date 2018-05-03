  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm9   #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovdqu %xmm1, %xmm5         #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vdivpd %ymm9, %ymm5, %ymm12  #  3     0x8   5      OPC=vdivpd_ymm_ymm_ymm  
  movsd %xmm12, %xmm1          #  4     0xd   5      OPC=movsd_xmm_xmm       
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
