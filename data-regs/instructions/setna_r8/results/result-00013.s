  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label     
  callq .read_zf_into_rcx  #  2     0x5  5      OPC=callq_label     
  cmovzw %cx, %bx          #  3     0xa  4      OPC=cmovzw_r16_r16  
  retq                     #  4     0xe  1      OPC=retq            
                                                                    
.size target, .-target
