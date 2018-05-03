  .text
  .globl move_byte_4_of_rbx_to_r8b
  .type move_byte_4_of_rbx_to_r8b, @function
#! maybe-read { %rbx }
#! maybe-write { %r8b }
#! must-undef { %r15 }
.move_byte_4_of_rbx_to_r8b:
  # ----------------------------------------------------------------------------
  # move the byte 4 of rbx to r8b
  # ----------------------------------------------------------------------------
  #
  pushfq
  movq %rbx, %r15
  shrq $0x20, %r15
  movb %r15b, %r8b
  popfq
  retq

.size move_byte_4_of_rbx_to_r8b, .-move_byte_4_of_rbx_to_r8b
  retq

