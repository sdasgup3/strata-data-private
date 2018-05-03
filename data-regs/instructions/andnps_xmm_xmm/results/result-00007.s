  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm7  #  1     0    4      OPC=vminps_xmm_xmm_xmm  
  pandn %xmm7, %xmm1          #  2     0x4  4      OPC=pandn_xmm_xmm       
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
