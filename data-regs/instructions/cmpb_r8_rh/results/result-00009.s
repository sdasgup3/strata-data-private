  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgb %ah, %bl    #  1     0    2      OPC=xchgb_r8_rh    
  movzbl %bl, %ebx  #  2     0x2  3      OPC=movzbl_r32_r8  
  cmpb %bl, %ah     #  3     0x5  2      OPC=cmpb_rh_r8     
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
