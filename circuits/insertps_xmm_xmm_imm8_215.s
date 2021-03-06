  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vsqrtps %xmm9, %xmm14                           #  2     0x5   5      OPC=vsqrtps_xmm_xmm    
  unpckhps %xmm1, %xmm14                          #  3     0xa   4      OPC=unpckhps_xmm_xmm   
  pxor %xmm1, %xmm1                               #  4     0xe   4      OPC=pxor_xmm_xmm       
  punpckhdq %xmm14, %xmm1                         #  5     0x12  5      OPC=punpckhdq_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
