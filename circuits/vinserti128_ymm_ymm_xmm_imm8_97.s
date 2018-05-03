  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  vminsd %xmm2, %xmm2, %xmm12           #  1     0    4      OPC=vminsd_xmm_xmm_xmm  
  vminpd %xmm3, %xmm3, %xmm13           #  2     0x4  4      OPC=vminpd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x8  5      OPC=callq_label         
  retq                                  #  4     0xd  1      OPC=retq                
                                                                                     
.size target, .-target
