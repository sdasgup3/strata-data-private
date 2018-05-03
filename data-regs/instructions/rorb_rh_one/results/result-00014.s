  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  andl %edx, %edx   #  2     0x3  2      OPC=andl_r32_r32   
  rorb $0x1, %dl    #  3     0x5  2      OPC=rorb_r8_one    
  xchgb %dl, %ah    #  4     0x7  2      OPC=xchgb_rh_r8    
  retq              #  5     0x9  1      OPC=retq           
                                                            
.size target, .-target
