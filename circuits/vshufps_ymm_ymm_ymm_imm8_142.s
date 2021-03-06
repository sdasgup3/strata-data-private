  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm3, %ymm6            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpcklqdq %ymm6, %ymm2, %ymm12  #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm6, %ymm12, %ymm10   #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm10, %ymm2, %ymm1  #  4     0xc   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
