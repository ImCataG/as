.data
    str: .space 2000
	v: .space 2000
    chDelim: .asciz " "
    spc: .asciz " "
	nline: .asciz "\n"
	aci: .asciz "aici"
	formatScanf: .asciz "%s"
	formatPrintStr: .asciz "%s"
	formatPrintLong: .asciz "%d"
	formatPrintStrFl: .asciz "%s\n"
	formatPrintLongFl: .asciz "%d\n"
    n: .space 4
    m: .space 4
	tot: .space 4
	i: .space 4
	j: .space 4
	modif: .space 4
.text

.global main

main:
	movl $v, %edi

    pushl $str
	//pushl $formatScanf
	call gets
	//popl %ebx
	popl %ebx

    pushl $chDelim
	pushl $str
	call strtok 
	popl %ebx
	popl %ebx

	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx


    pushl %eax
	call atoi
	popl %ebx

    movl %eax, n

    pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx

    pushl %eax
	call atoi
	popl %ebx

    movl %eax, m

	movl n, %ecx

	mul %ecx

	movl %eax, tot

	xorl %ecx, %ecx
	mov %ecx, i
//x 1 2 1 2 let M -2 add
et_for:

	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp tot, %ecx
	jg readarr

    pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx

	pushl %eax
	call atoi
	popl %ebx
 
	movl i, %ecx
	movl %eax, (%edi, %ecx, 4)

    jmp et_for

readarr:

	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 

	cmp $0, %eax
	je donereading

	pushl %eax

	jmp readarr

donereading:

	popl %ebx
	
	movb (%ebx, %ecx, 1), %al

	cmp $97, %al
    je pradd

    cmp $115, %al
    je prsub

    cmp $109, %al
    je prmul

    cmp $100, %al
    je prdiv

	cmp $114, %al
	je prrot

pradd:
	popl %ebx

	pushl %ebx
	call atoi
	popl %ebx

	movl %eax, modif
	xorl %ecx, %ecx
	mov %ecx, i

	pushl n
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	pushl m
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx


foradd:

	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp tot, %ecx
	jg exit
 
	movl (%edi, %ecx, 4), %eax
	addl modif, %eax

	pushl %eax
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

    jmp foradd

prsub:
	popl %ebx

	pushl %ebx
	call atoi
	popl %ebx

	movl %eax, modif
	xorl %ecx, %ecx
	mov %ecx, i

	pushl n
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	pushl m
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx


forsub:

	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp tot, %ecx
	jg exit
 
	movl (%edi, %ecx, 4), %eax
	subl modif, %eax

	pushl %eax
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

    jmp forsub

prmul:
	popl %ebx

	pushl %ebx
	call atoi
	popl %ebx

	movl %eax, modif
	xorl %ecx, %ecx
	mov %ecx, i

	pushl n
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	pushl m
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx


formul:

	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp tot, %ecx
	jg exit
 
	movl (%edi, %ecx, 4), %eax
	xorl %edx, %edx
	imul modif

	pushl %eax
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

    jmp formul

prdiv:
	popl %ebx

	pushl %ebx
	call atoi
	popl %ebx

	movl %eax, modif
	xorl %ecx, %ecx
	mov %ecx, i

	pushl n
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	pushl m
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx


fordiv:

	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp tot, %ecx
	jg exit
 
	movl (%edi, %ecx, 4), %eax
	xorl %edx, %edx
	cdq
	idiv modif

	pushl %eax
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

    jmp fordiv


prrot:

	pushl m
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	pushl n
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	xorl %ecx, %ecx
	xorl %edx, %edx
	movl %ecx, i

for1:
	xorl %edx, %edx 
	movl i, %ecx
	incl %ecx
	movl %ecx, i

	cmp m, %ecx
	jg exit

	mov n, %ebx
	mov %ebx, j

 for2:
	movl j, %ebx
	decl %ebx
	movl %ebx, j

	cmp $0, %ebx
	jl for1

	mov m, %eax
	mul %ebx

	addl %ecx, %eax
	// eax = m * j + i
	movl (%edi, %eax, 4), %eax

	pushl %ecx

	pushl %eax
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx

	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	popl %ecx

	jmp for2

exit:

	pushl $nline
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	
//2 4
//1 2 3 4
//5 6 7 8
//
//5 1
//6 2
//7 3
//8 4
