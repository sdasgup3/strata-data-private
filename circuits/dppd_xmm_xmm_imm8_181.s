  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm13          #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %xmm2, %xmm13, %xmm12        #  2     0x4   4      OPC=vhaddpd_xmm_xmm_xmm  
  vxorps %xmm11, %xmm11, %xmm13        #  3     0x8   5      OPC=vxorps_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label          
  retq                                 #  5     0x12  1      OPC=retq                 
                                                                                      
.size target, .-target
