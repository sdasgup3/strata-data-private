  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnpw %cx, %cx    #  1     0    4      OPC=cmovnpw_r16_r16  
  xchgq %rbx, %rcx    #  2     0x4  3      OPC=xchgq_r64_r64    
  cmovnpq %rcx, %rbx  #  3     0x7  4      OPC=cmovnpq_r64_r64  
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
