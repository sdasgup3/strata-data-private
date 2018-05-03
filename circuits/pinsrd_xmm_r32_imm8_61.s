  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm5                #  1     0     4      OPC=movd_xmm_r32            
  vpunpckldq %xmm5, %xmm1, %xmm8  #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vminps %xmm8, %xmm8, %xmm12     #  3     0x8   5      OPC=vminps_xmm_xmm_xmm      
  movsd %xmm12, %xmm1             #  4     0xd   5      OPC=movsd_xmm_xmm           
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
