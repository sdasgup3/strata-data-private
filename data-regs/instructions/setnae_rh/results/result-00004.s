  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label      
  popcntq %rcx, %rax       #  2     0x5  5      OPC=popcntq_r64_r64  
  movb %al, %ah            #  3     0xa  2      OPC=movb_rh_r8       
  retq                     #  4     0xc  1      OPC=retq             
                                                                     
.size target, .-target
