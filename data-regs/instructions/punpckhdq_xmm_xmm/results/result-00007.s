  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovshdup %xmm1, %xmm10         #  1     0    4      OPC=vmovshdup_xmm_xmm      
  vcvtsd2ss %xmm10, %xmm2, %xmm2  #  2     0x4  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  unpckhps %xmm2, %xmm1           #  3     0x9  3      OPC=unpckhps_xmm_xmm       
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target
