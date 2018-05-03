  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movapd %xmm2, %xmm1  #  1     0    4      OPC=movapd_xmm_xmm  
  minps %xmm2, %xmm1   #  2     0x4  3      OPC=minps_xmm_xmm   
  retq                 #  3     0x7  1      OPC=retq            
                                                                
.size target, .-target
