  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm4  #  1     0    4      OPC=movshdup_xmm_xmm  
  pmovzxbq %xmm4, %xmm9  #  2     0x4  6      OPC=pmovzxbq_xmm_xmm  
  vmovq %xmm9, %rbx      #  3     0xa  5      OPC=vmovq_r64_xmm     
  retq                   #  4     0xf  1      OPC=retq              
                                                                    
.size target, .-target