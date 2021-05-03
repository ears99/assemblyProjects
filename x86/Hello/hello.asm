section .data
  msg db "Hello, World", 0x0A, 0x0D, 0 ;string to print
  length equ $ - msg ;msg length

section .text
global _start

_start:
  mov eax, 4 ;print system call 
  mov ebx, 1 ;stdout
  mov ecx, msg ;string to print
  mov edx, len ;string length
  int 0x80 ;interrupt, call kernel

  mov eax, 1 ;exit
  int 0x80
