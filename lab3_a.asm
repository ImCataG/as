.data
a: .long 8
b: .long 9
c: .long 7

str1: .asciz "a este cel mai mic numar\n"
str2: .asciz "b este cel mai mic numar\n"
str3: .asciz "c este cel mai mic numar\n"

.text

.globl _start
_start:

mov b, %eax
mov a, %ebx

cmp %eax, %ebx
jle l1 # a <= b

cmp %eax, %ebx
jg l2 # a > b


l1:
mov c, %eax
mov a, %ebx
cmp %eax, %ebx
jle fina

cmp %eax, %ebx
jg finc

l2:
mov c, %eax
mov b, %ebx
cmp %eax, %ebx
jle finb

cmp %eax, %ebx
jg finc

fina:
mov $26, %edx
mov $4, %eax
mov $1, %ebx
mov $str1, %ecx
int $0x80

mov $1, %eax
mov $0, %ebx
int $0x80

finb:
mov $26, %edx
mov $4, %eax
mov $1, %ebx
mov $str2, %ecx
int $0x80

mov $1, %eax
mov $0, %ebx
int $0x80

finc:
mov $26, %edx
mov $4, %eax
mov $1, %ebx
mov $str3, %ecx
int $0x80

mov $1, %eax
mov $0, %ebx
int $0x80
