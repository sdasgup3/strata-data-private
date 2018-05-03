  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  xorps %xmm0, %xmm1          #  2     0x4  3      OPC=xorps_xmm_xmm       
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
