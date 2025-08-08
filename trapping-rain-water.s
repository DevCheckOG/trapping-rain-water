	.file	"trapping-rain-water.c"
	.text
	.globl	trap
	.p2align	4
	.type	trap,@function
trap:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_12
# %bb.2:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_7
# %bb.3:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_6:
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB0_10:
	movl	-40(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB0_11:
	jmp	.LBB0_1
.LBB0_12:
	movl	-32(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	trap, .Lfunc_end0-trap
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$12, -8(%rbp)
	leaq	main.height(%rip), %rdi
	movl	$12, %esi
	callq	trap
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	main.height,@object
	.data
	.p2align	4, 0x0
main.height:
	.long	0
	.long	1
	.long	0
	.long	2
	.long	1
	.long	0
	.long	3
	.long	2
	.long	1
	.long	2
	.long	1                              s
	.size	main.height, 48

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym trap
	.addrsig_sym printf
	.addrsig_sym main.height
