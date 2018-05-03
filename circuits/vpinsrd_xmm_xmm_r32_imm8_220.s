  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movd %ebx, %xmm14     #  1     0    5      OPC=movd_xmm_r32     
  movss %xmm14, %xmm2   #  2     0x5  5      OPC=movss_xmm_xmm    
  vmovdqu %xmm2, %xmm1  #  3     0xa  4      OPC=vmovdqu_xmm_xmm  
  retq                  #  4     0xe  1      OPC=retq             
                                                                  
.size target, .-target
