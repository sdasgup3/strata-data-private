  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  movups %xmm1, %xmm12   #  1     0    4      OPC=movups_xmm_xmm   
  pandn %xmm12, %xmm12   #  2     0x4  5      OPC=pandn_xmm_xmm    
  movddup %xmm12, %xmm1  #  3     0x9  5      OPC=movddup_xmm_xmm  
  retq                   #  4     0xe  1      OPC=retq             
                                                                   
.size target, .-target
