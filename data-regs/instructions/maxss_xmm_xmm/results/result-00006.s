  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxss %xmm2, %xmm1, %xmm3  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vmovq %xmm3, %xmm13         #  2     0x4  4      OPC=vmovq_xmm_xmm       
  movss %xmm13, %xmm1         #  3     0x8  5      OPC=movss_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
