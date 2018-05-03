  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovaps %ymm1, %ymm8        #  1     0    4      OPC=vmovaps_ymm_ymm     
  vmaxsd %xmm8, %xmm8, %xmm1  #  2     0x4  5      OPC=vmaxsd_xmm_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target