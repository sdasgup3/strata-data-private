  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                          
  callq .move_256_128_ymm1_xmm10_xmm11
  vmovmskps %xmm11, %r9d
  vmovmskps %xmm10, %ebx
  xaddb %r9b, %r9b
  xaddb %r9b, %r9b
  xaddb %r9b, %r9b

  xaddb %bl, %r9b 
  addw %r9w, %bx
  retq 
                                                                                  
.size target, .-target
