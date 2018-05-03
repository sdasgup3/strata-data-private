  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  movb %ah, %al   #  1     0    2      OPC=movb_r8_rh   
  rorb $0x1, %al  #  2     0x2  2      OPC=rorb_r8_one  
  xchgb %al, %ah  #  3     0x4  2      OPC=xchgb_rh_r8  
  retq            #  4     0x6  1      OPC=retq         
                                                        
.size target, .-target
