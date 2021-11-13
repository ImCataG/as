.data
#long x = 5;
#long y;
#string s = "Hello world!\n"
#int z = 2;

x: .long 5
y: .space 4
s: .asciz "Hello world!\n"
z: .word 2
s1: .space 13

.text

.globl _start
_start:
#eax = x
#y = eax
#eax = 4
#ebx = eax
#x = ebx

mov x, %eax
mov %eax, y
mov $4, %eax
mov %eax, %ebx
mov %ebx, x

#write - 4 //eax
#stdout - 1 //ebx
#adresa de la care se scrie - adresa lui s //ecx
#numarul de octeti pe care sa ii scrie //edx

mov $4, %eax
mov $1, %ebx
mov $s, %ecx
mov $14, %edx

int $0x80

#eax = codul functiei sistem
#ebx, ecx, edx, esi, edi, etc - argumentele functiei
#return 0 / exit(0) - succes
# != 0 sunt diferite failuri
#eax = codul exit 1
#ebx = 0
#eax si ebx sunt citite la int

mov $1, %eax
mov $0, %ebx

int $0x80


