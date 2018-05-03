  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovupd %xmm2, %xmm5       #  1     0    4      OPC=vmovupd_xmm_xmm    
  movapd %xmm5, %xmm2        #  2     0x4  4      OPC=movapd_xmm_xmm     
  vorpd %ymm3, %ymm2, %ymm1  #  3     0x8  4      OPC=vorpd_ymm_ymm_ymm  
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
