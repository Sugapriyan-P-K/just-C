	.file	"fibonacci.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter the number of terms: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Fibonacci Series: %d, %d, \0"
LC3:
	.ascii "%d, \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movl	$0, 40(%esp)
	movl	$1, 36(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$3, 44(%esp)
	jmp	L2
L3:
	movl	40(%esp), %edx
	movl	36(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	36(%esp), %eax
	movl	%eax, 40(%esp)
	movl	32(%esp), %eax
	movl	%eax, 36(%esp)
	addl	$1, 44(%esp)
L2:
	movl	28(%esp), %eax
	cmpl	%eax, 44(%esp)
	jle	L3
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
