  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %edx  #  1     0    5      OPC=shrxl_r32_r32_r32  
  sarb $0x1, %dl          #  2     0x5  2      OPC=sarb_r8_one        
  retq                    #  3     0x7  1      OPC=retq               
                                                                      
.size target, .-target
