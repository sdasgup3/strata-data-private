  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffc0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cbtw                            #  2     0xa   2      OPC=cbtw            
  xchgb %ah, %al                  #  3     0xc   2      OPC=xchgb_r8_rh     
  cwtl                            #  4     0xe   1      OPC=cwtl            
  setle %ah                       #  5     0xf   3      OPC=setle_rh        
  cwtl                            #  6     0x12  1      OPC=cwtl            
  retq                            #  7     0x13  1      OPC=retq            
                                                                            
.size target, .-target
