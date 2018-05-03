  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxwd %xmm2, %xmm6      #  1     0    5      OPC=vpmovzxwd_xmm_xmm   
  vminsd %xmm6, %xmm6, %xmm2  #  2     0x5  4      OPC=vminsd_xmm_xmm_xmm  
  movdqa %xmm2, %xmm1         #  3     0x9  4      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
