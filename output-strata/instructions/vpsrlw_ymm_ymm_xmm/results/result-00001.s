  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  vpsrlw %xmm3, %xmm2, %xmm2            #  2     0x5   4      OPC=vpsrlw_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  vpsrlw %xmm3, %xmm9, %xmm3            #  4     0xe   4      OPC=vpsrlw_xmm_xmm_xmm  
  vpsrad %xmm11, %xmm3, %xmm11          #  5     0x12  5      OPC=vpsrad_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label         
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
