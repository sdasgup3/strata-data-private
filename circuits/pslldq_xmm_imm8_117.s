  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  pxor %xmm1, %xmm1           #  1     0    4      OPC=pxor_xmm_xmm          
  vbroadcastsd %xmm1, %ymm12  #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  hsubpd %xmm12, %xmm1        #  3     0x9  5      OPC=hsubpd_xmm_xmm        
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
