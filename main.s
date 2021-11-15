	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"even counts: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$15, -88(%rbp)
	movl	$10, -84(%rbp)
	movl	$12, -80(%rbp)
	movl	$3, -76(%rbp)
	movl	$11, -72(%rbp)
	movl	$19, -68(%rbp)
	movl	$51, -64(%rbp)
	movl	$8, -60(%rbp)
	movl	$93, -56(%rbp)
	movl	$26, -52(%rbp)
	movl	$73, -48(%rbp)
	movl	$10, -44(%rbp)
	movl	$14, -40(%rbp)
	movl	$18, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$81, -28(%rbp)
	movl	$64, -24(%rbp)
	movl	$35, -20(%rbp)
	movl	$66, -16(%rbp)
	movl	$10, -12(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L2
.L4:
	movl	-104(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	addl	$1, -100(%rbp)
.L3:
	addl	$1, -104(%rbp)
.L2:
	cmpl	$21, -104(%rbp)
	jle	.L4
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
