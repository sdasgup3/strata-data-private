  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vmovshdup %xmm13, %xmm9              #  2     0x5   5      OPC=vmovshdup_xmm_xmm     
  vpbroadcastw %xmm9, %ymm11           #  3     0xa   5      OPC=vpbroadcastw_ymm_xmm  
  movhlps %xmm13, %xmm11               #  4     0xf   4      OPC=movhlps_xmm_xmm       
  vmovsd %xmm12, %xmm11, %xmm10        #  5     0x13  5      OPC=vmovsd_xmm_xmm_xmm    
  movaps %xmm10, %xmm1                 #  6     0x18  4      OPC=movaps_xmm_xmm        
  retq                                 #  7     0x1c  1      OPC=retq                  
                                                                                       
.size target, .-target
