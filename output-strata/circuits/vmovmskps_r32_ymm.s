  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  callq .move_128_256_xmm12_xmm13_ymm3  #  2     0x5   5      OPC=callq_label        
  vmovmskps %ymm3, %rbp                 #  3     0xa   4      OPC=vmovmskps_r64_ymm  
  movq $0x0, %rbx                       #  4     0xe   10     OPC=movq_r64_imm64     
  andb %bh, %bl                         #  5     0x18  2      OPC=andb_r8_rh         
  addb %bpl, %bl                        #  6     0x1a  3      OPC=addb_r8_r8         
  retq                                  #  7     0x1d  1      OPC=retq               
                                                                                     
.size target, .-target
