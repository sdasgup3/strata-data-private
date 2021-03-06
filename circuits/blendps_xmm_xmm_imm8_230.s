  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movsldup %xmm1, %xmm4                         #  2     0x5   4      OPC=movsldup_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label       
  vmovd %r9d, %xmm7                             #  4     0xe   5      OPC=vmovd_xmm_r32     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label       
  retq                                          #  6     0x18  1      OPC=retq              
                                                                                            
.size target, .-target
