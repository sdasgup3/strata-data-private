  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm1   #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklpd %xmm3, %xmm2, %xmm11  #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movups %xmm11, %xmm1            #  3     0x8  4      OPC=movups_xmm_xmm         
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target
