  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                     
.target:                                          #        0    0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  vunpckhps %xmm2, %xmm11, %xmm12                 #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm10, %xmm12, %xmm1                    #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                            #  4     0xe  1      OPC=retq                   
                                                                                                  
.size target, .-target
