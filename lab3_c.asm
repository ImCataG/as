.data
n: .long 5
v: .long 1, 2, 3, 4, 5
s: .space 4

#for(long i = n - 1; i >=0; i--)
#	s = s + v[n - 1 - i];

#for (long i = n; i >=1; i--)
#	s = s + v[n - i]

.text
.globl _start
_start:

mov $0, %eax #pentru suma
mov $v, %edi
mov n, %ecx

etloop:
mov n, %edx
sub %ecx, %edx  # n - i
add (%edi, %edx, 4), %eax
loop etloop

label:
mov %eax, s

mov $1, %eax
mov $0, %ebx
int $0x80