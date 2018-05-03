  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vfmadd132sd %xmm2, %xmm2, %xmm2  #  1     0     5      OPC=vfmadd132sd_xmm_xmm_xmm  
  vminpd %xmm3, %xmm3, %xmm6       #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm       
  vbroadcastsd %xmm6, %ymm3        #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %xmm3, %xmm2, %xmm1  #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
