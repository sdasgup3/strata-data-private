  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %dx  #  1     0    4      OPC=movsbw_r16_rh  
  sarw $0x1, %dx   #  2     0x4  3      OPC=sarw_r16_one   
  xchgb %dl, %ah   #  3     0x7  2      OPC=xchgb_rh_r8    
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
