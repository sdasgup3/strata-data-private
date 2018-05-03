  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %cl, %dx  #  1     0    4      OPC=movzbw_r16_r8  
  xaddb %dl, %dh   #  2     0x4  3      OPC=xaddb_rh_r8    
  subb %dh, %bl    #  3     0x7  2      OPC=subb_r8_rh     
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
