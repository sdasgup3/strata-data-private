  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %ebx  #  1     0    3      OPC=movsbl_r32_r8  
  xaddb %bl, %ah    #  2     0x3  3      OPC=xaddb_rh_r8    
  movsbl %ah, %ebx  #  3     0x6  3      OPC=movsbl_r32_rh  
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
