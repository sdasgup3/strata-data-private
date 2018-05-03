  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovdqa %xmm2, %xmm1                      #  1     0     4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  vmovd %r8d, %xmm0                         #  3     0x9   5      OPC=vmovd_xmm_r32    
  movss %xmm0, %xmm1                        #  4     0xe   4      OPC=movss_xmm_xmm    
  retq                                      #  5     0x12  1      OPC=retq             
                                                                                       
.size target, .-target
