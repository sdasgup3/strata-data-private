  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setpo %r8b          #  1     0    4      OPC=setpo_r8         
  shlb $0x1, %r8b     #  2     0x4  3      OPC=shlb_r8_one      
  cmovnel %ecx, %ebx  #  3     0x7  3      OPC=cmovnel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
