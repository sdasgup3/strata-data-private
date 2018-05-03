  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %bl, %rbx  #  1     0    4      OPC=movzbq_r64_r8  
  xorb %ah, %bl     #  2     0x4  2      OPC=xorb_r8_rh     
  movb %bl, %ah     #  3     0x6  2      OPC=movb_rh_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
