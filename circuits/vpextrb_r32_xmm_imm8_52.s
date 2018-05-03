  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  2     0x5   5      OPC=callq_label        
  andnl %r8d, %r8d, %ebx                        #  3     0xa   5      OPC=andnl_r32_r32_r32  
  xaddb %bl, %r11b                              #  4     0xf   4      OPC=xaddb_r8_r8        
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
