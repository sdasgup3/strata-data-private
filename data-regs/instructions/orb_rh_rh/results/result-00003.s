  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bh, %edx  #  1     0    3      OPC=movsbl_r32_rh  
  orb %dl, %ah      #  2     0x3  2      OPC=orb_rh_r8      
  callq .clear_cf   #  3     0x5  5      OPC=callq_label    
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
