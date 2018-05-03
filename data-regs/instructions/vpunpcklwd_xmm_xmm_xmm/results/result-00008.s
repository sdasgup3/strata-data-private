  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  movdqu %xmm2, %xmm0     #  1     0    4      OPC=movdqu_xmm_xmm     
  punpcklwd %xmm3, %xmm0  #  2     0x4  4      OPC=punpcklwd_xmm_xmm  
  vmovaps %xmm0, %xmm1    #  3     0x8  4      OPC=vmovaps_xmm_xmm    
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
