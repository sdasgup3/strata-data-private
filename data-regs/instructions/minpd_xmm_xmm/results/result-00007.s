  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminpd %xmm2, %xmm1, %xmm11  #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  vmovdqu %ymm11, %ymm5        #  2     0x4  5      OPC=vmovdqu_ymm_ymm     
  movapd %xmm5, %xmm1          #  3     0x9  4      OPC=movapd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
