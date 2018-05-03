  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movupd %xmm2, %xmm3   #  1     0    4      OPC=movupd_xmm_xmm   
  vmovaps %ymm3, %ymm1  #  2     0x4  4      OPC=vmovaps_ymm_ymm  
  retq                  #  3     0x8  1      OPC=retq             
                                                                  
.size target, .-target