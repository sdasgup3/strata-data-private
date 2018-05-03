  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  vmovdqu %xmm3, %xmm13           #  1     0     4      OPC=vmovdqu_xmm_xmm      
  vmovups %xmm2, %xmm15           #  2     0x4   4      OPC=vmovups_xmm_xmm      
  vpsllvd %ymm13, %ymm15, %ymm10  #  3     0x8   5      OPC=vpsllvd_ymm_ymm_ymm  
  vmovaps %xmm10, %xmm1           #  4     0xd   5      OPC=vmovaps_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                 
                                                                                 
.size target, .-target
