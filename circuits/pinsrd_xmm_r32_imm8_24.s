  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  vmovd %ebx, %xmm2                     #  1     0     4      OPC=vmovd_xmm_r32  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label    
  movss %xmm2, %xmm1                    #  3     0x9   4      OPC=movss_xmm_xmm  
  minss %xmm12, %xmm1                   #  4     0xd   5      OPC=minss_xmm_xmm  
  retq                                  #  5     0x12  1      OPC=retq           
                                                                                 
.size target, .-target
