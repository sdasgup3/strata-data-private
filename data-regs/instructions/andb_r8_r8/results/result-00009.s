  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  movb %cl, %ch  #  1     0    2      OPC=movb_rh_r8  
  andb %ch, %bl  #  2     0x2  2      OPC=andb_r8_rh  
  clc            #  3     0x4  1      OPC=clc         
  retq           #  4     0x5  1      OPC=retq        
                                                      
.size target, .-target
