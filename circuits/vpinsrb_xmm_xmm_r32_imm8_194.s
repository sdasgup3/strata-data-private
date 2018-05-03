  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode             
.target:                               #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13     #  1     0     5      OPC=callq_label    
  vzeroall                             #  2     0x5   3      OPC=vzeroall       
  callq .move_64_128_xmm10_xmm11_xmm2  #  3     0x8   5      OPC=callq_label    
  callq .move_128_064_xmm2_r8_r9       #  4     0xd   5      OPC=callq_label    
  callq .move_064_128_r12_r13_xmm1     #  5     0x12  5      OPC=callq_label    
  xaddl %r8d, %ebx                     #  6     0x17  4      OPC=xaddl_r32_r32  
  callq .move_r8b_to_byte_2_of_ymm1    #  7     0x1b  5      OPC=callq_label    
  retq                                 #  8     0x20  1      OPC=retq           
                                                                                
.size target, .-target
