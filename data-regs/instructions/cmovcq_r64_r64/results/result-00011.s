  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode               
.target:                  #        0    0      OPC=<label>          
  callq .set_szp_for_rbx  #  1     0    5      OPC=callq_label      
  cmovpew %cx, %cx        #  2     0x5  4      OPC=cmovpew_r16_r16  
  cmovbq %rcx, %rbx       #  3     0x9  4      OPC=cmovbq_r64_r64   
  retq                    #  4     0xd  1      OPC=retq             
                                                                    
.size target, .-target
