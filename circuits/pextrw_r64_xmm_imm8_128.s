  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  xorl %ebx, %ebx    #  1     0    2      OPC=xorl_r32_r32     
  vmovd %xmm1, %esi  #  2     0x2  4      OPC=vmovd_r32_xmm    
  cmovnaw %si, %bx   #  3     0x6  4      OPC=cmovnaw_r16_r16  
  retq               #  4     0xa  1      OPC=retq             
                                                               
.size target, .-target
