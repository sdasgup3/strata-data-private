  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm10, %xmm4                      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm   
  vbroadcastss %xmm8, %xmm6                       #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  vunpcklps %ymm4, %ymm6, %ymm10                  #  4     0xf   4      OPC=vunpcklps_ymm_ymm_ymm  
  movdqa %xmm10, %xmm1                            #  5     0x13  5      OPC=movdqa_xmm_xmm         
  movss %xmm11, %xmm1                             #  6     0x18  5      OPC=movss_xmm_xmm          
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
