  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movsbw %ah, %dx   #  1     0    4      OPC=movsbw_r16_rh   
  movswq %dx, %rsp  #  2     0x4  4      OPC=movswq_r64_r16  
  xaddb %spl, %bl   #  3     0x8  4      OPC=xaddb_r8_r8     
  movb %bl, %ah     #  4     0xc  2      OPC=movb_rh_r8      
  retq              #  5     0xe  1      OPC=retq            
                                                             
.size target, .-target
