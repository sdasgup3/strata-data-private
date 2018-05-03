  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                  
.target:                  #        0    0      OPC=<label>             
  vmovaps %xmm1, %xmm6    #  1     0    4      OPC=vmovaps_xmm_xmm     
  cvttsd2sil %xmm6, %ebx  #  2     0x4  4      OPC=cvttsd2sil_r32_xmm  
  retq                    #  3     0x8  1      OPC=retq                
                                                                       
.size target, .-target
