  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  mulss %xmm3, %xmm2              #  1     0     4      OPC=mulss_xmm_xmm       
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  vzeroall                        #  3     0x9   3      OPC=vzeroall            
  vmovd %r8d, %xmm8               #  4     0xc   5      OPC=vmovd_xmm_r32       
  vaddps %xmm8, %xmm1, %xmm1      #  5     0x11  5      OPC=vaddps_xmm_xmm_xmm  
  retq                            #  6     0x16  1      OPC=retq                
                                                                                
.size target, .-target
