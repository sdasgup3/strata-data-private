  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movaps %xmm6, %xmm12                          #  2     0x5   4      OPC=movaps_xmm_xmm     
  vmovshdup %xmm12, %xmm7                       #  3     0x9   5      OPC=vmovshdup_xmm_xmm  
  movdqu %xmm7, %xmm1                           #  4     0xe   4      OPC=movdqu_xmm_xmm     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
