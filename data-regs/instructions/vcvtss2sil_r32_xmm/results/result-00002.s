  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                  
.target:                  #        0    0      OPC=<label>             
  vcvtps2pd %xmm1, %ymm6  #  1     0    4      OPC=vcvtps2pd_ymm_xmm   
  vcvtsd2sil %xmm6, %ebx  #  2     0x4  4      OPC=vcvtsd2sil_r32_xmm  
  retq                    #  3     0x8  1      OPC=retq                
                                                                       
.size target, .-target
