  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %ecx  #  1     0    3      OPC=movsbl_r32_r8  
  movb %ah, %bl     #  2     0x3  2      OPC=movb_r8_rh     
  addb %cl, %ah     #  3     0x5  2      OPC=addb_rh_r8     
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
