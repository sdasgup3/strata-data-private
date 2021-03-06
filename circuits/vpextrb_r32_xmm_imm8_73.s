  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movmskpd %xmm7, %r8d                          #  2     0x5   5      OPC=movmskpd_r32_xmm   
  andnl %r8d, %r8d, %ebx                        #  3     0xa   5      OPC=andnl_r32_r32_r32  
  callq .move_byte_9_of_ymm1_to_r8b             #  4     0xf   5      OPC=callq_label        
  adcb %r8b, %bl                                #  5     0x14  3      OPC=adcb_r8_r8         
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
