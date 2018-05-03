  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label    
  callq .read_cf_into_rcx  #  2     0x5   5      OPC=callq_label    
  xaddl %ebx, %ecx         #  3     0xa   3      OPC=xaddl_r32_r32  
  callq .read_pf_into_rbx  #  4     0xd   5      OPC=callq_label    
  retq                     #  5     0x12  1      OPC=retq           
                                                                    
.size target, .-target
