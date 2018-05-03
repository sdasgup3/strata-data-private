  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm6, %ymm10                    #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vpxor %xmm10, %xmm2, %xmm5                    #  3     0xa   5      OPC=vpxor_xmm_xmm_xmm     
  vmovsd %xmm4, %xmm5, %xmm1                    #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
