  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm14  #  1     0    5      OPC=movshdup_xmm_xmm  
  movd %xmm14, %ebx       #  2     0x5  5      OPC=movd_r32_xmm      
  retq                    #  3     0xa  1      OPC=retq              
                                                                     
.size target, .-target
