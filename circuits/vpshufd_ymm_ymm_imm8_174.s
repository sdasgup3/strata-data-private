  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovsldup %ymm2, %ymm3           #  1     0    4      OPC=vmovsldup_ymm_ymm        
  vmovups %ymm2, %ymm9             #  2     0x4  4      OPC=vmovups_ymm_ymm          
  vpunpckhqdq %ymm3, %ymm9, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
