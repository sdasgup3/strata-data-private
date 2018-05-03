  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm1, %xmm2, %xmm11  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  pandn %xmm1, %xmm11          #  2     0x4  5      OPC=pandn_xmm_xmm       
  movups %xmm11, %xmm1         #  3     0x9  4      OPC=movups_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
