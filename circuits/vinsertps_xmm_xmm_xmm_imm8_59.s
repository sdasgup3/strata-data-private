  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label               
  andl %r13d, %r13d                   #  2     0x5   3      OPC=andl_r32_r32              
  vpor %xmm3, %xmm3, %xmm3            #  3     0x8   4      OPC=vpor_xmm_xmm_xmm          
  callq .move_256_128_ymm3_xmm8_xmm9  #  4     0xc   5      OPC=callq_label               
  subl %r12d, %r12d                   #  5     0x11  3      OPC=subl_r32_r32              
  vfnmsub231ss %xmm2, %xmm8, %xmm1    #  6     0x14  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1    #  7     0x19  5      OPC=callq_label               
  retq                                #  8     0x1e  1      OPC=retq                      
                                                                                          
.size target, .-target
