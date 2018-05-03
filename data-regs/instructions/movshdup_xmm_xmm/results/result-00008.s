  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovshdup %xmm2, %xmm4  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  movups %xmm4, %xmm1     #  2     0x4  3      OPC=movups_xmm_xmm     
  retq                    #  3     0x7  1      OPC=retq               
                                                                      
.size target, .-target
