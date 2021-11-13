.data
x: .long 8
y: .long 6
z: .long 7

.text
.globl _start
_start:

mov x, %eax
mov y, %ebx
mov z, %ecx

add %eax, %ebx
# add x, %ebx
# ebx = x + y

add %ebx, %ecx

mov $1, %eax
mov $0, %ebx
int $0x80
