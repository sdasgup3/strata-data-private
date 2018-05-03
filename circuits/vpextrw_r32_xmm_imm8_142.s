  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32           
  vaddsubps %xmm1, %xmm8, %xmm1                   #  3     0x7   4      OPC=vaddsubps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d        #  4     0xb   5      OPC=callq_label            
  cmovncw %r9w, %bx                               #  5     0x10  5      OPC=cmovncw_r16_r16        
  retq                                            #  6     0x15  1      OPC=retq                   
                                                                                                   
.size target, .-target