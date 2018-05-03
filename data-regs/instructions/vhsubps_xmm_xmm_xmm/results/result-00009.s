  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  hsubps %xmm3, %xmm2   #  1     0    4      OPC=hsubps_xmm_xmm   
  movdqa %xmm2, %xmm4   #  2     0x4  4      OPC=movdqa_xmm_xmm   
  vmovupd %xmm4, %xmm1  #  3     0x8  4      OPC=vmovupd_xmm_xmm  
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
