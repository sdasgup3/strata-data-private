  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm2                    #  1     0     4      OPC=vmovshdup_xmm_xmm       
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label             
  movd %r9d, %xmm1                          #  3     0x9   5      OPC=movd_xmm_r32            
  vpunpckldq %xmm1, %xmm2, %xmm14           #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movddup %xmm14, %xmm1                     #  5     0x12  5      OPC=movddup_xmm_xmm         
  retq                                      #  6     0x17  1      OPC=retq                    
                                                                                              
.size target, .-target
