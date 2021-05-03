;assembly program to print a user's name

section .data
  msg1 db "What is your name?", 0x0A, 0x0D, 0
  len1 equ $ - msg
  msg2 db "Hello, ", 0
  len2 equ $ - msg2

section .bss
  name resb 16

section .text
global _start

_start:
  call printMsg1
  call readName
  call printMsg2
  call printName

  mov eax, 1
  int 0x80

printMsg1:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, len1
  int 0x80
  ret

readName:
  mov eax, 3
  mov ebx, 0
  mov ecx, name
  mov edx, 16
  int 0x80
  ret

printMsg2:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg2
  mov edx, len2
  int 0x80
  ret

printName:
  mov eax, 4
  mov ebx, 1
  mov ecx, name
  mov edx, 16
  int 0x80
  ret
