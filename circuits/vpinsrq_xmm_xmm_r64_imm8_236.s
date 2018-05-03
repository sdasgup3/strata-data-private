  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movq %rbx, %xmm6            #  1     0    5      OPC=movq_xmm_r64        
  vmovsd %xmm6, %xmm2, %xmm1  #  2     0x5  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
