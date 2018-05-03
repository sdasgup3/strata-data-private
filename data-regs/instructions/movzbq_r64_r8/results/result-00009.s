  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .clear_pf          #  1     0     5      OPC=callq_label    
  callq .read_pf_into_rbx  #  2     0x5   5      OPC=callq_label    
  movb %cl, %ah            #  3     0xa   2      OPC=movb_rh_r8     
  movzbw %ah, %bx          #  4     0xc   4      OPC=movzbw_r16_rh  
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target