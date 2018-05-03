  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnel %ebx, %ecx  #  1     0    3      OPC=cmovnel_r32_r32  
  setnz %bh           #  2     0x3  3      OPC=setnz_rh         
  xchgl %ebx, %ecx    #  3     0x6  2      OPC=xchgl_r32_r32    
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
