  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  adcb %ah, %ah  #  1     0    2      OPC=adcb_rh_rh  
  setne %al      #  2     0x2  3      OPC=setne_r8    
  cwtl           #  3     0x5  1      OPC=cwtl        
  retq           #  4     0x6  1      OPC=retq        
                                                      
.size target, .-target
