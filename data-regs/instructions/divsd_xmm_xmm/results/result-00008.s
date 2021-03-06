  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovsd %xmm2, %xmm11, %xmm4          #  2     0x5   4      OPC=vmovsd_xmm_xmm_xmm  
  divpd %xmm4, %xmm10                  #  3     0x9   5      OPC=divpd_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
