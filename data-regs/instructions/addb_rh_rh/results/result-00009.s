  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %bh, %bx  #  1     0    4      OPC=movsbw_r16_rh  
  addb %bl, %ah    #  2     0x4  2      OPC=addb_rh_r8     
  retq             #  3     0x6  1      OPC=retq           
                                                           
.size target, .-target
