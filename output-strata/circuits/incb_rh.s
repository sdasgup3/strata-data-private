  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode           
.target:         #        0    0      OPC=<label>      
  xorb %al, %al  #  1     0    2      OPC=xorb_r8_r8   
  callq .set_cf  #  2     0x2  5      OPC=callq_label  
  adcb %al, %ah  #  3     0x7  2      OPC=adcb_rh_r8   
  retq           #  4     0x9  1      OPC=retq         
                                                       
.size target, .-target
