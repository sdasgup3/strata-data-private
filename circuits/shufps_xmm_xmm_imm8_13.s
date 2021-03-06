  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm7, %xmm5, %xmm10                #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vbroadcastss %xmm2, %ymm11                    #  3     0x9   5      OPC=vbroadcastss_ymm_xmm   
  movdqa %xmm10, %xmm1                          #  4     0xe   5      OPC=movdqa_xmm_xmm         
  unpcklpd %xmm11, %xmm1                        #  5     0x13  5      OPC=unpcklpd_xmm_xmm       
  retq                                          #  6     0x18  1      OPC=retq                   
                                                                                                 
.size target, .-target
