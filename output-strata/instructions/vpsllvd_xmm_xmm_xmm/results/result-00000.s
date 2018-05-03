  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovups %xmm2, %xmm1          #  1     0     4      OPC=vmovups_xmm_xmm      
  vmovaps %xmm1, %xmm6          #  2     0x4   4      OPC=vmovaps_xmm_xmm      
  vmovupd %xmm3, %xmm14         #  3     0x8   4      OPC=vmovupd_xmm_xmm      
  vpsllvd %ymm14, %ymm6, %ymm1  #  4     0xc   5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
