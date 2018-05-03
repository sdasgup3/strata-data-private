  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setbe %ch          #  1     0    3      OPC=setbe_rh        
  xchgb %ch, %cl     #  2     0x3  2      OPC=xchgb_r8_rh     
  cmpxchgb %ch, %bh  #  3     0x5  3      OPC=cmpxchgb_rh_rh  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
