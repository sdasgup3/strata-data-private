  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movd %xmm1, %edx  #  1     0    4      OPC=movd_r32_xmm   
  movzbl %dh, %ebx  #  2     0x4  3      OPC=movzbl_r32_rh  
  retq              #  3     0x7  1      OPC=retq           
                                                            
.size target, .-target
