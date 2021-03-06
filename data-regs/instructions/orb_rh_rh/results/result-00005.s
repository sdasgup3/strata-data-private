  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  xorb %al, %al            #  1     0    2      OPC=xorb_r8_r8   
  orb %bh, %al             #  2     0x2  2      OPC=orb_r8_rh    
  orb %al, %ah             #  3     0x4  2      OPC=orb_rh_r8    
  callq .read_of_into_rcx  #  4     0x6  5      OPC=callq_label  
  xorb %ah, %ch            #  5     0xb  2      OPC=xorb_rh_rh   
  retq                     #  6     0xd  1      OPC=retq         
                                                                 
.size target, .-target
