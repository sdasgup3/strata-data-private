  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vorpd %xmm2, %xmm2, %xmm1                 #  1     0     4      OPC=vorpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  xaddl %r9d, %ebx                          #  3     0x9   4      OPC=xaddl_r32_r32      
  callq .move_r9b_to_byte_10_of_ymm1        #  4     0xd   5      OPC=callq_label        
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
