  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvttps2dq %xmm2, %xmm3  #  1     0    4      OPC=vcvttps2dq_xmm_xmm  
  movups %xmm3, %xmm1      #  2     0x4  3      OPC=movups_xmm_xmm      
  retq                     #  3     0x7  1      OPC=retq                
                                                                        
.size target, .-target
