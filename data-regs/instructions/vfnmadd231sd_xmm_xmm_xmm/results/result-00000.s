  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                        
.target:                                        #        0    0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label               
  vfnmsub213pd %xmm3, %xmm6, %xmm4              #  2     0x5  5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vfmadd231sd %xmm4, %xmm2, %xmm1               #  3     0xa  5      OPC=vfmadd231sd_xmm_xmm_xmm   
  retq                                          #  4     0xf  1      OPC=retq                      
                                                                                                   
.size target, .-target
