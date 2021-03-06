  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovddup %ymm2, %ymm15            #  1     0    4      OPC=vmovddup_ymm_ymm         
  vpunpckhdq %ymm15, %ymm2, %ymm11  #  2     0x4  5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm2, %ymm11, %ymm1  #  3     0x9  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
