  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm13           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm13, %ymm2, %ymm14  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm13, %ymm14, %ymm0   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm0, %ymm14, %ymm1  #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
