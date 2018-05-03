  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vpmovzxbd %xmm2, %xmm8    #  1     0     5      OPC=vpmovzxbd_xmm_xmm  
  vpor %ymm8, %ymm8, %ymm7  #  2     0x5   5      OPC=vpor_ymm_ymm_ymm   
  movupd %xmm7, %xmm1       #  3     0xa   4      OPC=movupd_xmm_xmm     
  orps %xmm7, %xmm1         #  4     0xe   3      OPC=orps_xmm_xmm       
  retq                      #  5     0x11  1      OPC=retq               
                                                                         
.size target, .-target
