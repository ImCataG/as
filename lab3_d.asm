.data
n: .long 7
str1: .asciz "Hello\n"
str2: .space 7

#for(long i = n - 1; i >=0; i--)
#	s = s + v[n - 1 - i];

#for (long i = n; i >=1; i--)
#	s = s + v[n - i]

.text
.globl _start
_start:

mov $str1, %esi
mov $str2, %edi

mov n, %ecx #contor i

etloop:
mov n, %edx
sub %ecx, %edx  # n - i
movb (%esi, %edx, 1), %al
movb %al, (%edi, %edx, 1)
loop etloop

label:
mov $4, %eax
mov $1, %ebx
mov $str2, %ecx
mov $7, %edx
int $0x80