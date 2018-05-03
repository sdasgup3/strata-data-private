  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  xorb %al, %al  #  1     0    2      OPC=xorb_r8_r8  
  cwtl           #  2     0x2  1      OPC=cwtl        
  subb %bl, %ah  #  3     0x3  2      OPC=subb_rh_r8  
  retq           #  4     0x5  1      OPC=retq        
                                                      
.size target, .-target
