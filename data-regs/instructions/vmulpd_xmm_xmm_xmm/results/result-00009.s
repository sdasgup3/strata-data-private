  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  mulpd %xmm3, %xmm2          #  1     0    4      OPC=mulpd_xmm_xmm       
  movq %xmm2, %xmm6           #  2     0x4  4      OPC=movq_xmm_xmm        
  vmaxss %xmm6, %xmm2, %xmm1  #  3     0x8  4      OPC=vmaxss_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
