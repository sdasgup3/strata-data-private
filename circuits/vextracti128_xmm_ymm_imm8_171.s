  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0    5      OPC=callq_label         
  vmovupd %xmm9, %xmm7                #  2     0x5  5      OPC=vmovupd_xmm_xmm     
  vmovss %xmm7, %xmm7, %xmm1          #  3     0xa  4      OPC=vmovss_xmm_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target