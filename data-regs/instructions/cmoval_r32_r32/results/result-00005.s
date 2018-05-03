  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movw %cx, %cx        #  1     0    3      OPC=movw_r16_r16      
  cmovnael %ebx, %ecx  #  2     0x3  3      OPC=cmovnael_r32_r32  
  cmovnzl %ecx, %ebx   #  3     0x6  3      OPC=cmovnzl_r32_r32   
  retq                 #  4     0x9  1      OPC=retq              
                                                                  
.size target, .-target
