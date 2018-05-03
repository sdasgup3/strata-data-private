  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11          #  1     0     5      OPC=callq_label  
  vzeroall                                  #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm1          #  3     0x8   5      OPC=callq_label  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label  
  callq .move_byte_13_of_ymm1_to_r8b        #  5     0x12  5      OPC=callq_label  
  callq .move_r9b_to_byte_10_of_ymm1        #  6     0x17  5      OPC=callq_label  
  callq .move_r8b_to_byte_11_of_ymm1        #  7     0x1c  5      OPC=callq_label  
  retq                                      #  8     0x21  1      OPC=retq         
                                                                                   
.size target, .-target
