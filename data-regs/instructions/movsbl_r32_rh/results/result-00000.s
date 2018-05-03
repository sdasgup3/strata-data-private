  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %ah, %cl     #  1     0    2      OPC=movb_r8_rh     
  movsbl %cl, %ebp  #  2     0x2  3      OPC=movsbl_r32_r8  
  movq %rbp, %rbx   #  3     0x5  3      OPC=movq_r64_r64   
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
