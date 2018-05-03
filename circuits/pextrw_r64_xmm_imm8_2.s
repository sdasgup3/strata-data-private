  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vpunpckldq %xmm1, %xmm1, %xmm7            #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmulsd %xmm7, %xmm7, %xmm1                #  2     0x4   4      OPC=vmulsd_xmm_xmm_xmm      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label             
  movzwq %r8w, %rbx                         #  4     0xd   4      OPC=movzwq_r64_r16          
  retq                                      #  5     0x11  1      OPC=retq                    
                                                                                              
.size target, .-target
