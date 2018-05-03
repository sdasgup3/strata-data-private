  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  orps %xmm12, %xmm1                    #  3     0xa   4      OPC=orps_xmm_xmm        
  vaddsd %xmm10, %xmm1, %xmm1           #  4     0xe   5      OPC=vaddsd_xmm_xmm_xmm  
  movdqu %xmm11, %xmm1                  #  5     0x13  5      OPC=movdqu_xmm_xmm      
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
