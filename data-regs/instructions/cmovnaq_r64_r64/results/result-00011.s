  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovzw %bx, %bx     #  1     0    4      OPC=cmovzw_r16_r16   
  cmovbeq %rcx, %rbx  #  2     0x4  4      OPC=cmovbeq_r64_r64  
  retq                #  3     0x8  1      OPC=retq             
                                                                
.size target, .-target
