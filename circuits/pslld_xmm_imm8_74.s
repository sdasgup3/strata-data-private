  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vandnps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vandnps_xmm_xmm_xmm   
  vbroadcastsd %xmm7, %ymm3    #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  movdqa %xmm3, %xmm1          #  3     0x9  4      OPC=movdqa_xmm_xmm        
  retq                         #  4     0xd  1      OPC=retq                  
                                                                              
.size target, .-target
