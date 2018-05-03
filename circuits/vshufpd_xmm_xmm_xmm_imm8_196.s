  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovq %xmm3, %r11                   #  1     0     5      OPC=vmovq_r64_xmm    
  vmovq %xmm2, %r10                   #  2     0x5   5      OPC=vmovq_r64_xmm    
  vzeroall                            #  3     0xa   3      OPC=vzeroall         
  callq .move_064_128_r10_r11_xmm2    #  4     0xd   5      OPC=callq_label      
  callq .move_256_128_ymm2_xmm8_xmm9  #  5     0x12  5      OPC=callq_label      
  vmovapd %xmm8, %xmm1                #  6     0x17  5      OPC=vmovapd_xmm_xmm  
  retq                                #  7     0x1c  1      OPC=retq             
                                                                                 
.size target, .-target
