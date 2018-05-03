  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                        
.target:                                          #        0    0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label               
  vfnmsub231pd %xmm9, %xmm3, %xmm3                #  2     0x5  5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  vfmadd132sd %xmm3, %xmm2, %xmm1                 #  3     0xa  5      OPC=vfmadd132sd_xmm_xmm_xmm   
  retq                                            #  4     0xf  1      OPC=retq                      
                                                                                                     
.size target, .-target
