  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  seto %ah         #  1     0    3      OPC=seto_rh         
  salb $0x1, %ah   #  2     0x3  2      OPC=salb_rh_one     
  cmovzw %cx, %bx  #  3     0x5  4      OPC=cmovzw_r16_r16  
  retq             #  4     0x9  1      OPC=retq            
                                                            
.size target, .-target
