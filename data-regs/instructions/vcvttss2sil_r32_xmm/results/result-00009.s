  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                  
.target:                  #        0     0      OPC=<label>             
  movq $0x7, %rbx         #  1     0     10     OPC=movq_r64_imm64      
  callq .set_szp_for_rbx  #  2     0xa   5      OPC=callq_label         
  cvttss2sil %xmm1, %r8d  #  3     0xf   5      OPC=cvttss2sil_r32_xmm  
  movq %r8, %r13          #  4     0x14  3      OPC=movq_r64_r64        
  cmovnzl %r13d, %ebx     #  5     0x17  4      OPC=cmovnzl_r32_r32     
  retq                    #  6     0x1b  1      OPC=retq                
                                                                        
.size target, .-target
