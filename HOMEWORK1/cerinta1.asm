.data
	x16: .space 200
	x2: .space 1600
	indexb2: .long 0
	neg: .long 0
	result: .long 0
	cur: .space 1
	dash: .asciz "-"
	spc: .asciz " "
	nline: .asciz "\n"
	aci: .asciz "aici"
	formatScanf: .asciz "%s"
	formatPrintStr: .asciz "%s"
	formatPrintLong: .asciz "%d"
	formatPrintStrFl: .asciz "%s\n"
	formatPrintLongFl: .asciz "%d\n"
	flet: .asciz "let"
	fadd: .asciz "add"
	fsub: .asciz "sub"
	fmul: .asciz "mul"
	fdiv: .asciz "div"
.text

.global main

main:
	// scanf("%s", &x16)
	pushl $x16
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx

	movl $x16, %edi
	movl $x2, %esi
	xorl %eax, %eax
	xorl %ecx, %ecx


et_for:
	movb (%edi, %ecx, 1), %al
	cmp $0, %al
	je basechanged

	# SA INCEAPA IFURILE

	cmp $48, %al
	je c0

	cmp $49, %al
	je c1

	cmp $50, %al
	je c2

	cmp $51, %al
	je c3

	cmp $52, %al
	je c4

	cmp $53, %al
	je c5

	cmp $54, %al
	je c6

	cmp $55, %al
	je c7

	cmp $56, %al
	je c8

	cmp $57, %al
	je c9

	cmp $65, %al
	je cA

	cmp $66, %al
	je cB

	cmp $67, %al
	je cC

	cmp $68, %al
	je cD

	cmp $69, %al
	je cE

	cmp $70, %al
	je cF

cnt:
	incl %ecx
	jmp et_for

c0:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c1:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c2:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c3:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c4:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c5:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c6:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c7:
	pushl %ecx

	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c8:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
c9:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cA:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cB:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cC:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cD:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cE:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt
	
cF:
	pushl %ecx

	movl indexb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx

	addl $4, indexb2

	popl %ecx
	jmp cnt

basechanged:
	// printf("%s\n", x2);
	//pushl $x2
	//pushl $formatPrintStrFl
	//call printf
	//popl %ebx
	//popl %ebx

	xorl %ecx, %ecx
	xorl %eax, %eax
	movl $x2, %edi



letsgo:
	movb (%edi, %ecx, 1), %al

	cmp $0, %al
	je quitit


	addl $1, %ecx
	movb (%edi, %ecx, 1), %al



	cmp $48, %al
	je evariabilasaunumar

	cmp $49, %al
	je eoperatie

evariabilasaunumar:
	addl $1, %ecx
	movb (%edi, %ecx, 1), %al

	cmp $48, %al
	je enumar

	cmp $49, %al
	je evariabila


enumar:

	movl $0, result
	addl $1, %ecx
	movb (%edi, %ecx, 1), %al


	cmp $48, %al
	je dontprintdash

	pushl %eax
	pushl %ecx
	pushl $dash
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax

dontprintdash:

	addl $1, %ecx
	movl (%edi, %ecx, 1), %eax
	cmp $48, %al
	je jump1

	addl $128, result

jump1:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump2

	addl $64, result

jump2:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump3

	addl $32, result

jump3:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump4

	addl $16, result

jump4:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump5

	addl $8, result

jump5:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump6

	addl $4, result

jump6:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump7

	addl $2, result

jump7:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump8

	addl $1, result

jump8:
	pushl %eax
	pushl %ecx
	pushl result
	pushl $formatPrintLong
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax

	pushl %eax
	pushl %ecx
	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax

	addl $1, %ecx

	jmp cnt2

evariabila:

	movl $0, result
	addl $2, %ecx
	movl (%edi, %ecx, 1), %eax
	cmp $48, %al
	je jump1v

	addl $128, result

jump1v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump2v

	addl $64, result

jump2v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump3v

	addl $32, result

jump3v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump4v

	addl $16, result

jump4v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump5v

	addl $8, result

jump5v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump6v

	addl $4, result

jump6v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump7v

	addl $2, result

jump7v:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump8v

	addl $1, result

jump8v:
	pushl %eax
	pushl %ecx
	pushl $result
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax

	pushl %eax
	pushl %ecx
	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax

	addl $1, %ecx

	jmp cnt2

eoperatie:
	movl $0, result
	xorl %eax, %eax
	addl $8, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump1o

	addl $4, result


jump1o:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump2o

	addl $2, result

jump2o:

	addl $1, %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je jump3o

	addl $1, result

jump3o:

	movl result, %ebx

	addl $1, %ecx

	cmp $0, %ebx
	je prlet

	cmp $1, %ebx
	je pradd

	cmp $2, %ebx
	je prsub

	cmp $3, %ebx
	je prmul

	cmp $4, %ebx
	je prdiv
	

prlet:
	pushl %eax
	pushl %ecx
	pushl $flet
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax
	jmp prspc

pradd:
	pushl %eax
	pushl %ecx
	pushl $fadd
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax
	jmp prspc

prsub:
	pushl %eax
	pushl %ecx
	pushl $fsub
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax
	jmp prspc

prmul:
	pushl %eax
	pushl %ecx
	pushl $fmul
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax
	jmp prspc

prdiv:
	pushl %eax
	pushl %ecx
	pushl $fdiv
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	popl %eax
	jmp prspc

prspc:
	pushl %ecx
	pushl $spc
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx
	popl %ecx
	jmp cnt2

cnt2:
	jmp letsgo

quitit:

	pushl %ecx
	pushl $nline
	pushl $formatPrintStr
	call printf
	popl %ebx
	popl %ebx

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80

//101001101000 100000000001 101000000000 101001111000 100100001110 110000000100
//101001111000 100000000001 101000000000 101001111000 100100001110 110000000100
//101001111000 100000000001 110000000000 101001111000 100100001110 110000000100
