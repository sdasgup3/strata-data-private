  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label      
  popcntq %rcx, %rdi       #  2     0x5  5      OPC=popcntq_r64_r64  
  setne %ah                #  3     0xa  3      OPC=setne_rh         
  retq                     #  4     0xd  1      OPC=retq             
                                                                     
.size target, .-target
