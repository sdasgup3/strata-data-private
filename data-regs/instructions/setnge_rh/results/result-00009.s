  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label   
  callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label   
  xorl %ecx, %ebx          #  3     0xa   2      OPC=xorl_r32_r32  
  xaddb %bl, %bl           #  4     0xc   3      OPC=xaddb_r8_r8   
  setnz %ah                #  5     0xf   3      OPC=setnz_rh      
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
