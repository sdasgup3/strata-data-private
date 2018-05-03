  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                      
.target:                                    #        0    0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label             
  vcvtsi2sdl %r9d, %xmm2, %xmm14            #  2     0x5  5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vunpckhpd %xmm3, %xmm14, %xmm1            #  3     0xa  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                                      #  4     0xe  1      OPC=retq                    
                                                                                             
.size target, .-target
