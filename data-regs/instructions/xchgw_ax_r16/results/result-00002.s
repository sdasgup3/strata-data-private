  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  xchgw %bx, %ax  #  1     0    3      OPC=xchgw_r16_r16  
  cwtl            #  2     0x3  1      OPC=cwtl           
  cwtl            #  3     0x4  1      OPC=cwtl           
  retq            #  4     0x5  1      OPC=retq           
                                                          
.size target, .-target
