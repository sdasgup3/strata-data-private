  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm  
  xorpd %xmm6, %xmm1          #  2     0x4  4      OPC=xorpd_xmm_xmm       
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
