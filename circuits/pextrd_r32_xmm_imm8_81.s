  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovshdup %xmm1, %xmm6      #  1     0    4      OPC=vmovshdup_xmm_xmm   
  vminpd %xmm6, %xmm6, %xmm9  #  2     0x4  4      OPC=vminpd_xmm_xmm_xmm  
  vmovd %xmm9, %ebx           #  3     0x8  4      OPC=vmovd_r32_xmm       
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
