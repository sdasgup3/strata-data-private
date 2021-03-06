  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm13, %xmm1            #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vmovss %xmm1, %xmm13, %xmm8           #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm    
  movaps %xmm8, %xmm1                   #  4     0xe   4      OPC=movaps_xmm_xmm        
  retq                                  #  5     0x12  1      OPC=retq                  
                                                                                        
.size target, .-target
