  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vcvttpd2dq %xmm1, %xmm9         #  1     0    4      OPC=vcvttpd2dq_xmm_xmm     
  vunpckhps %ymm9, %ymm9, %ymm13  #  2     0x4  5      OPC=vunpckhps_ymm_ymm_ymm  
  pmovzxbd %xmm13, %xmm1          #  3     0x9  6      OPC=pmovzxbd_xmm_xmm       
  retq                            #  4     0xf  1      OPC=retq                   
                                                                                  
.size target, .-target
