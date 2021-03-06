  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm12, %ymm1                   #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  xchgl %eax, %r9d                          #  4     0xf   2      OPC=xchgl_r32_eax      
  movzwl %ax, %ebx                          #  5     0x11  3      OPC=movzwl_r32_r16     
  retq                                      #  6     0x14  1      OPC=retq               
                                                                                         
.size target, .-target
