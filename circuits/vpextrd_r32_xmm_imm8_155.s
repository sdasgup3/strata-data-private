  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label      
  xorq %rbx, %rbx                           #  2     0x5  3      OPC=xorq_r64_r64     
  cmovpel %r9d, %ebx                        #  3     0x8  4      OPC=cmovpel_r32_r32  
  retq                                      #  4     0xc  1      OPC=retq             
                                                                                      
.size target, .-target
