.data
s: .space 12

.text

.globl _start

_start:

#citesc s cu limita 12

mov $3, %eax
mov $2, %ebx
mov $s, %ecx
mov $12, %edx

int $0x80

#afisez s cu limita 12

mov $4, %eax
mov $1, %ebx
mov $s, %ecx
mov $12, %edx

int $0x80

#inchid programul

mov $1, %eax
mov $0, %ebx

int $0x80
