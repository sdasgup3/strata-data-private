  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_byte_13_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label      
  callq .move_r9b_to_byte_24_of_ymm1  #  2     0x5   5      OPC=callq_label      
  minpd %xmm1, %xmm1                  #  3     0xa   4      OPC=minpd_xmm_xmm    
  vmovapd %xmm1, %xmm1                #  4     0xe   4      OPC=vmovapd_xmm_xmm  
  retq                                #  5     0x12  1      OPC=retq             
                                                                                 
.size target, .-target
