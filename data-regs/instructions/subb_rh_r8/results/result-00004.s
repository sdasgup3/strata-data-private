  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8      
  cmovsw %ax, %ax  #  2     0x2  4      OPC=cmovsw_r16_r16  
  cwtl             #  3     0x6  1      OPC=cwtl            
  cwtl             #  4     0x7  1      OPC=cwtl            
  sbbb %bl, %ah    #  5     0x8  2      OPC=sbbb_rh_r8      
  retq             #  6     0xa  1      OPC=retq            
                                                            
.size target, .-target
