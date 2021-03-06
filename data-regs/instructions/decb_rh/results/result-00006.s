  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rbx, %rbx  #  1     0    3      OPC=xorq_r64_r64  
  decw %bx         #  2     0x3  3      OPC=decw_r16      
  addb %bh, %ah    #  3     0x6  2      OPC=addb_rh_rh    
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
