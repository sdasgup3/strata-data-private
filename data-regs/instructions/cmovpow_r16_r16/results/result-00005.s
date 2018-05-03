  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswq %cx, %rsi    #  1     0    4      OPC=movswq_r64_r16   
  cmovpol %esi, %ebx  #  2     0x4  3      OPC=cmovpol_r32_r32  
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
