  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movslq %ebx, %rdx   #  1     0    3      OPC=movslq_r64_r32   
  cmovnsl %edx, %ecx  #  2     0x3  3      OPC=cmovnsl_r32_r32  
  xchgl %ecx, %ebx    #  3     0x6  2      OPC=xchgl_r32_r32    
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
