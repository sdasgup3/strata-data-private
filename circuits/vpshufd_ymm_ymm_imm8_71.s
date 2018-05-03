  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmaxps %ymm2, %ymm2, %ymm6        #  1     0     4      OPC=vmaxps_ymm_ymm_ymm       
  vunpcklps %ymm2, %ymm2, %ymm8     #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm6, %ymm2, %ymm1   #  3     0x8   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm8, %ymm6, %ymm15    #  4     0xc   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm15, %ymm1  #  5     0x11  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
