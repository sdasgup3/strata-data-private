  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm11  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movdqa %xmm2, %xmm11              #  2     0x4  5      OPC=movdqa_xmm_xmm           
  vmovddup %ymm11, %ymm1            #  3     0x9  5      OPC=vmovddup_ymm_ymm         
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
