  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vcvtps2pd %xmm2, %xmm11  #  1     0    4      OPC=vcvtps2pd_xmm_xmm  
  movaps %xmm11, %xmm1     #  2     0x4  4      OPC=movaps_xmm_xmm     
  retq                     #  3     0x8  1      OPC=retq               
                                                                       
.size target, .-target
