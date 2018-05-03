  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vmovapd %xmm3, %xmm13         #  1     0    4      OPC=vmovapd_xmm_xmm      
  vmovupd %xmm2, %xmm8          #  2     0x4  4      OPC=vmovupd_xmm_xmm      
  vpsllvd %ymm13, %ymm8, %ymm1  #  3     0x8  5      OPC=vpsllvd_ymm_ymm_ymm  
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
