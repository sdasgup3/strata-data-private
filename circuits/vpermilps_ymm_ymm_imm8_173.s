  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm10           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovddup %ymm2, %ymm8             #  2     0x4   4      OPC=vmovddup_ymm_ymm         
  vunpckhps %ymm2, %ymm8, %ymm9     #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm10, %ymm9, %ymm1  #  4     0xc   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
