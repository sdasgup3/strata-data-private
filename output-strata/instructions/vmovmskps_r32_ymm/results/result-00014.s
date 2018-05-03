  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovapd %ymm1, %ymm9   #  1     0    4      OPC=vmovapd_ymm_ymm    
  vmovmskps %ymm9, %rbx  #  2     0x4  5      OPC=vmovmskps_r64_ymm  
  retq                   #  3     0x9  1      OPC=retq               
                                                                     
.size target, .-target
