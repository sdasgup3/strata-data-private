  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovapd %xmm3, %xmm1            #  1     0    4      OPC=vmovapd_xmm_xmm        
  vmovdqa %xmm2, %xmm10           #  2     0x4  4      OPC=vmovdqa_xmm_xmm        
  vpackssdw %ymm1, %ymm10, %ymm1  #  3     0x8  4      OPC=vpackssdw_ymm_ymm_ymm  
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target
