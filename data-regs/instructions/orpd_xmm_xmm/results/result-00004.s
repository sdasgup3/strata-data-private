  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  por %xmm2, %xmm2      #  1     0    4      OPC=por_xmm_xmm      
  vmovdqa %xmm2, %xmm5  #  2     0x4  4      OPC=vmovdqa_xmm_xmm  
  por %xmm5, %xmm1      #  3     0x8  4      OPC=por_xmm_xmm      
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
