        .data
fout:   .asciiz "testout.txt"      # filename for output
buffer: .asciiz "Kika?."
words: .space 1000
        .text
  # Open/Create(for writing)
  li   $v0, 13       # system call for open file
  la   $a0, fout     # File's name.
  li   $a1, 1        # (flags are 0: read, 1: write)
  li   $a2, 0        # mode is ignored
  syscall             
  move $s7, $v0      # save the file descriptor 
  # Write to file just opened
  li   $v0, 15       # system call for write to file
  move $a0, $s7      # file descriptor 
  la   $a1, buffer   # buffer's address
  li   $a2, 50       # Max buffer's length
  syscall            # write to file
  # Close the file 
  li   $v0, 16       # system call for close file
  move $a0, $s7      # file descriptor to close
  syscall            # close file
    # Open/Create(for writing)
  li   $v0, 13       # system call for open file
  la   $a0, fout     # File's name.
  li   $a1, 0        # (flags are 0: read, 1: write)
  li   $a2, 0        # mode is ignored
  syscall             
  move $s7, $v0      # save the file descriptor
   # Read file just opened
  li   $v0, 14       # system call for write to file
  move $a0, $s7      # file descriptor 
  la   $a1, words   # buffer's address
  li   $a2, 50       # Max buffer's length
  syscall            # read file
 la $v0, 4
 la $a0, words
 syscall 
  # Close the file 
  li   $v0, 16       # system call for close file
  move $a0, $s7      # file descriptor to close
  syscall     
