  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm13   #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vpmovsxdq %xmm13, %ymm5  #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm5, %xmm2   #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  movaps %xmm2, %xmm1      #  4     0xd   3      OPC=movaps_xmm_xmm     
  retq                     #  5     0x10  1      OPC=retq               
                                                                        
.size target, .-target
