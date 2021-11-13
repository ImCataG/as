#instructiunea loop
.data
n: .long 5
s: .space 4
.text
.global _start
_start:
#for(long i = 0; i < n; i++)
#for(long i = n - 1; i >=0; i--)

mov $0, %eax #pentru suma
mov n, %ecx
sub $1, %ecx

etloop:
add %ecx, %eax
loop etloop

mov %eax, s

label:

mov $1, %eax
mov $0, %ebx
int $0x80
