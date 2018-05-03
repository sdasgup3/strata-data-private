  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label    
  xchgw %r10w, %r8w                 #  3     0xa   4      OPC=xchgw_r16_r16  
  movw %r11w, %r9w                  #  4     0xe   4      OPC=movw_r16_r16   
  callq .move_064_128_r8_r9_xmm1    #  5     0x12  5      OPC=callq_label    
  retq                              #  6     0x17  1      OPC=retq           
                                                                             
.size target, .-target
