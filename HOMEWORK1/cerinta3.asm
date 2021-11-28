.data
	v: .space 1000
	str: .space 2000
	chDelim: .asciz " "
    dash: .asciz "-"
	spc: .asciz " "
	nline: .asciz "\n"
	aci: .asciz "aici"
	formatScanf: .asciz "%s"
	formatPrintStr: .asciz "%s"
	formatPrintLong: .asciz "%d"
	formatPrintStrFl: .asciz "%s\n"
	formatPrintLongFl: .asciz "%d\n"
	res: .space 4 
    result: .long 0
.text

.global main

main:

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
	
	movl %eax, res
	movl %eax, %edi

	xorl %eax, %eax
    xorl %edx, %edx
	xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al

brp:

    cmp $0, %al
    je et_for

    cmp $57, %al
    jg eoperatiesauvariabila

	jmp enumar
	
et_for:
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 

	movl %eax, res

	cmp $0, %eax
	je exit

	movl %eax, res
	
    movl %eax, %edi

steponme:
    xorl %eax, %eax
    xorl %edx, %edx
	xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al

    cmp $0, %al
    je et_for

    cmp $57, %al
    jg eoperatiesauvariabila

	jmp enumar

enumar:
	pushl %edi
	call atoi
	popl %ebx
	
	pushl %eax

	jmp et_for

eoperatiesauvariabila:

	pushl %edi
	call strlen
	popl %ebx

	xorl %ecx, %ecx

	cmp $1, %eax
	je evariabila

	jmp eoperatie

evariabila:
	xorl %ecx, %ecx
	xorl %eax, %eax
	xorl %ebx, %ebx
    movb (%edi, %ecx, 1), %bl

	movl $v, %edi

	movl (%edi, %ebx, 4), %edx
	cmp $0, %edx
	je initial

	pushl %edx

	jmp et_for

initial:
	pushl %ebx
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 

	pushl %eax
	call atoi
	popl %ebx

	popl %ebx

	movl %eax, (%edi, %ebx, 4)

	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
	jmp et_for

eoperatie:

	xorl %eax, %eax
    xorl %edx, %edx
	xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al

    cmp $97, %al
    je pradd

    cmp $115, %al
    je prsub

    cmp $109, %al
    je prmul

    cmp $100, %al
    je prdiv

// edx, eax last 2

pradd:
    popl %eax
    popl %edx

    addl %eax, %edx

    pushl %edx
	
    jmp et_for

prsub:
    popl %eax
    popl %edx

    subl %eax, %edx

    pushl %edx

    jmp et_for

prmul:
    popl %eax
    popl %ecx

    imul %ecx

    pushl %eax

    jmp et_for

prdiv:
    popl %ecx
    popl %eax

    idiv %ecx

    pushl %eax

    jmp et_for
    
exit:

	pushl $formatPrintLongFl
	call printf
	popl %ebx
	popl %ebx

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	