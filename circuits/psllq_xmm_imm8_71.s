  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vmovddup %ymm6, %ymm15      #  2     0x4  4      OPC=vmovddup_ymm_ymm    
  movdqa %xmm15, %xmm1        #  3     0x8  5      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
