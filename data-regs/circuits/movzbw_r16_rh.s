  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %rcx, %rcx          #  1     0    3      OPC=xorq_r64_r64  
  callq .read_sf_into_rbx  #  2     0x3  5      OPC=callq_label   
  movb %ah, %bl            #  3     0x8  2      OPC=movb_r8_rh    
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
