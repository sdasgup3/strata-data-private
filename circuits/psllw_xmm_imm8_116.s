  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                    
.target:                                #        0    0      OPC=<label>               
  vbroadcastss %xmm1, %xmm2             #  1     0    5      OPC=vbroadcastss_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5  5      OPC=callq_label           
  movupd %xmm11, %xmm1                  #  3     0xa  5      OPC=movupd_xmm_xmm        
  retq                                  #  4     0xf  1      OPC=retq                  
                                                                                       
.size target, .-target
