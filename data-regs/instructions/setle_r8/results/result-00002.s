  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x80, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  xchgl %ebx, %ebx  #  2     0xa   2      OPC=xchgl_r32_r32   
  setle %bh         #  3     0xc   3      OPC=setle_rh        
  xchgb %bh, %bl    #  4     0xf   2      OPC=xchgb_r8_rh     
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
