  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  callq .move_byte_13_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label    
  movzbl %r8b, %ebx                   #  2     0x5  4      OPC=movzbl_r32_r8  
  orb %bh, %bh                        #  3     0x9  2      OPC=orb_rh_rh      
  retq                                #  4     0xb  1      OPC=retq           
                                                                              
.size target, .-target
