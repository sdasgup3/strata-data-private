  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovups %xmm3, %xmm1                      #  1     0     4      OPC=vmovups_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  callq .move_016_008_dx_r8b_r9b            #  3     0x9   5      OPC=callq_label      
  callq .move_r8b_to_byte_4_of_ymm1         #  4     0xe   5      OPC=callq_label      
  callq .move_r9b_to_byte_5_of_ymm1         #  5     0x13  5      OPC=callq_label      
  retq                                      #  6     0x18  1      OPC=retq             
                                                                                       
.size target, .-target
