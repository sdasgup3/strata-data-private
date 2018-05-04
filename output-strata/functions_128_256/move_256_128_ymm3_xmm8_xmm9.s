  .text
  .globl move_256_128_ymm3_xmm8_xmm9
  .type move_256_128_ymm3_xmm8_xmm9, @function
#! maybe-read { %ymm3 }
#! maybe-write { %xmm8 %xmm9 }
#! must-undef { %ymm15 }
.move_256_128_ymm3_xmm8_xmm9:
  # ----------------------------------------------------------------------------
  # moves the lower 128 bits of ymm3 to xmm8, and the higher 128 bits
  # to xmm9.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movupd %xmm3, %xmm8
  #
  # mov low and high 128 bytes of ymm3 to ymm15, and swap them
  vperm2f128 $0x1, %ymm3, %ymm3, %ymm15
  #
  # move higher bits
  movupd %xmm15, %xmm9
  retq

.size move_256_128_ymm3_xmm8_xmm9, .-move_256_128_ymm3_xmm8_xmm9
  retq
