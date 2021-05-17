	.file	"server.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, @function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB403:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	nop
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN7ChannelaSERKS_,"axG",@progbits,_ZN7ChannelaSERKS_,comdat
	.align 2
	.weak	_ZN7ChannelaSERKS_
	.type	_ZN7ChannelaSERKS_, @function
_ZN7ChannelaSERKS_:
.LFB1526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movl	$9, %edx
	movq	-16(%rbp), %rax
	addq	$32, %rax
.L6:
	testq	%rdx, %rdx
	js	.L5
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	addq	$4, %rcx
	addq	$4, %rax
	subq	$1, %rdx
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1526:
	.size	_ZN7ChannelaSERKS_, .-_ZN7ChannelaSERKS_
	.section	.rodata
	.align 8
.LC0:
	.string	"Ce channel existe deja, EXIT addChannel() \n"
.LC1:
	.string	""
	.align 8
.LC2:
	.string	"Ajout d'un channel dans le serveur irc\n"
	.align 8
.LC3:
	.string	"Emplacement restant sur ce serveur :"
.LC4:
	.string	"\n"
	.section	.text._ZN3Irc10addChannelE7Channel,"axG",@progbits,_ZN3Irc10addChannelE7Channel,comdat
	.align 2
	.weak	_ZN3Irc10addChannelE7Channel
	.type	_ZN3Irc10addChannelE7Channel, @function
_ZN3Irc10addChannelE7Channel:
.LFB1525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
.L12:
	cmpl	$9, -4(%rbp)
	jg	.L13
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	592(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	testb	%al, %al
	je	.L10
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	592(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L11
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	$10, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	592(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7ChannelaSERKS_
	jmp	.L9
.L11:
	addl	$1, -4(%rbp)
	jmp	.L12
.L9:
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1525:
	.size	_ZN3Irc10addChannelE7Channel, .-_ZN3Irc10addChannelE7Channel
	.section	.text._ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
.L18:
	cmpl	$9, -4(%rbp)
	jg	.L15
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	272(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	testb	%al, %al
	je	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	addl	$1, -4(%rbp)
	jmp	.L18
.L15:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1527:
	.size	_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZN7ChannelC2Ev,"axG",@progbits,_ZN7ChannelC5Ev,comdat
	.align 2
	.weak	_ZN7ChannelC2Ev
	.type	_ZN7ChannelC2Ev, @function
_ZN7ChannelC2Ev:
.LFB1532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1532:
	.size	_ZN7ChannelC2Ev, .-_ZN7ChannelC2Ev
	.weak	_ZN7ChannelC1Ev
	.set	_ZN7ChannelC1Ev,_ZN7ChannelC2Ev
	.section	.text._ZN7ChannelD2Ev,"axG",@progbits,_ZN7ChannelD5Ev,comdat
	.align 2
	.weak	_ZN7ChannelD2Ev
	.type	_ZN7ChannelD2Ev, @function
_ZN7ChannelD2Ev:
.LFB1535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1535:
	.size	_ZN7ChannelD2Ev, .-_ZN7ChannelD2Ev
	.weak	_ZN7ChannelD1Ev
	.set	_ZN7ChannelD1Ev,_ZN7ChannelD2Ev
	.section	.rodata
.LC5:
	.string	"/PASS"
.LC6:
	.string	"/NICK"
.LC7:
	.string	"/USER"
.LC8:
	.string	"/JOIN"
	.section	.text._ZN3IrcC2Ev,"axG",@progbits,_ZN3IrcC5Ev,comdat
	.align 2
	.weak	_ZN3IrcC2Ev
	.type	_ZN3IrcC2Ev, @function
_ZN3IrcC2Ev:
.LFB1537:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1537
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	leaq	280(%rax), %r12
	movl	$9, %ebx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rsi
	movq	%r12, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	32(%r12), %r13
	subq	$1, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	movq	%r13, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE1:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	addq	$32, %r13
	subq	$1, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rsi
	movq	%r13, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE2:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	addq	$32, %r13
	subq	$1, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	movq	%r13, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE3:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	32(%r13), %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	addq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	addq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	addq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	addq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	32(%rbx), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-56(%rbp), %rax
	addq	$600, %rax
	movl	$9, %ebx
	movq	%rax, %r12
.L23:
	testq	%rbx, %rbx
	js	.L36
	movq	%r12, %rdi
	call	_ZN7ChannelC1Ev
	addq	$72, %r12
	subq	$1, %rbx
	jmp	.L23
.L32:
	endbr64
	movq	%rax, %r13
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L25
.L33:
	endbr64
	movq	%rax, %r13
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L25
.L34:
	endbr64
	movq	%rax, %r13
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L25
.L35:
	endbr64
	movq	%rax, %r13
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
.L25:
	testq	%r12, %r12
	je	.L29
	movl	$9, %eax
	subq	%rbx, %rax
	salq	$5, %rax
	leaq	(%r12,%rax), %rbx
.L30:
	cmpq	%r12, %rbx
	je	.L29
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L30
.L29:
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L36:
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1537:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN3IrcC2Ev,"aG",@progbits,_ZN3IrcC5Ev,comdat
.LLSDA1537:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1537-.LLSDACSB1537
.LLSDACSB1537:
	.uleb128 .LEHB0-.LFB1537
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L32-.LFB1537
	.uleb128 0
	.uleb128 .LEHB1-.LFB1537
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L33-.LFB1537
	.uleb128 0
	.uleb128 .LEHB2-.LFB1537
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L34-.LFB1537
	.uleb128 0
	.uleb128 .LEHB3-.LFB1537
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L35-.LFB1537
	.uleb128 0
	.uleb128 .LEHB4-.LFB1537
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1537:
	.section	.text._ZN3IrcC2Ev,"axG",@progbits,_ZN3IrcC5Ev,comdat
	.size	_ZN3IrcC2Ev, .-_ZN3IrcC2Ev
	.weak	_ZN3IrcC1Ev
	.set	_ZN3IrcC1Ev,_ZN3IrcC2Ev
	.section	.text._ZN3IrcD2Ev,"axG",@progbits,_ZN3IrcD5Ev,comdat
	.align 2
	.weak	_ZN3IrcD2Ev
	.type	_ZN3IrcD2Ev, @function
_ZN3IrcD2Ev:
.LFB1540:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$600, %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	addq	$600, %rax
	leaq	720(%rax), %rbx
.L39:
	movq	-24(%rbp), %rax
	addq	$600, %rax
	cmpq	%rax, %rbx
	je	.L38
	subq	$72, %rbx
	movq	%rbx, %rdi
	call	_ZN7ChannelD1Ev
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	addq	$280, %rax
	testq	%rax, %rax
	je	.L40
	movq	-24(%rbp), %rax
	addq	$280, %rax
	leaq	320(%rax), %rbx
.L41:
	movq	-24(%rbp), %rax
	addq	$280, %rax
	cmpq	%rax, %rbx
	je	.L40
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L41
.L40:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1540:
	.size	_ZN3IrcD2Ev, .-_ZN3IrcD2Ev
	.weak	_ZN3IrcD1Ev
	.set	_ZN3IrcD1Ev,_ZN3IrcD2Ev
	.section	.text._ZN7ChannelC2ERKS_,"axG",@progbits,_ZN7ChannelC5ERKS_,comdat
	.align 2
	.weak	_ZN7ChannelC2ERKS_
	.type	_ZN7ChannelC2ERKS_, @function
_ZN7ChannelC2ERKS_:
.LFB1543:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1543:
	.size	_ZN7ChannelC2ERKS_, .-_ZN7ChannelC2ERKS_
	.weak	_ZN7ChannelC1ERKS_
	.set	_ZN7ChannelC1ERKS_,_ZN7ChannelC2ERKS_
	.section	.rodata
.LC9:
	.string	"test"
	.align 8
.LC10:
	.string	"Entrez le num\303\251ro de port utilis\303\251 en ecoute:\n"
	.align 8
.LC11:
	.string	"Impossible de cr\303\251er le socket d'ecoute "
	.align 8
.LC12:
	.string	"Impossible de lier le socket au port"
	.align 8
.LC13:
	.string	"Attente de requete sur le port...\n"
	.align 8
.LC14:
	.string	"Probleme de reception du message"
.LC15:
	.string	"Depuis "
.LC16:
	.string	":"
.LC17:
	.string	"Message checked."
.LC18:
	.string	"Message re\303\247u: "
	.align 8
.LC19:
	.string	"Emission du message impossible"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1529:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1529
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1656, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-1456(%rbp), %rax
	movq	%rax, %rdi
.LEHB5:
	call	_ZN3IrcC1Ev
.LEHE5:
	leaq	-1616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7ChannelC1Ev
	leaq	-1616(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
	leaq	-128(%rbp), %rax
	movl	$103, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC10(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-1660(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERt@PLT
	movl	$0, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	socket@PLT
	movl	%eax, -1652(%rbp)
	cmpl	$0, -1652(%rbp)
	jns	.L44
	leaq	.LC11(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	movw	$2, -1632(%rbp)
	movw	$2, -1632(%rbp)
	movl	$0, %edi
	call	htonl@PLT
	movl	%eax, -1628(%rbp)
	movzwl	-1660(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons@PLT
	movw	%ax, -1630(%rbp)
	leaq	-1632(%rbp), %rcx
	movl	-1652(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	shrl	$31, %eax
	testb	%al, %al
	je	.L45
	leaq	.LC12(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, %edi
	call	exit@PLT
.L45:
	movl	-1652(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	listen@PLT
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzwl	-1660(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEt@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L49:
	movl	$16, -1656(%rbp)
	leaq	-128(%rbp), %rax
	movl	$103, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-1656(%rbp), %rcx
	leaq	-1648(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movl	-1652(%rbp), %eax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$103, %edx
	movl	%eax, %edi
	call	recvfrom@PLT
	shrq	$63, %rax
	testb	%al, %al
	je	.L46
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	leaq	.LC15(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movl	-1644(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa@PLT
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movzwl	-1646(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ntohs@PLT
	movzwl	%ax, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEt@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE6:
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-1661(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-1536(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE7:
	leaq	-1536(%rbp), %rdx
	leaq	-1456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movl	%eax, %ebx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	testb	%bl, %bl
	je	.L47
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L47:
	leaq	-1616(%rbp), %rdx
	leaq	-1536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN7ChannelC1ERKS_
.LEHE8:
	leaq	-1536(%rbp), %rdx
	leaq	-1456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZN3Irc10addChannelE7Channel
.LEHE9:
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7ChannelD1Ev
	leaq	-1616(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB10:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE10:
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-1661(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-1536(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE11:
	leaq	-1536(%rbp), %rdx
	leaq	-1456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3Irc8checkCmdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB12:
	call	_ZNSolsEb@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE12:
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movzwl	-1658(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	leaq	-1648(%rbp), %rcx
	leaq	-128(%rbp), %rsi
	movl	-1652(%rbp), %eax
	movl	$16, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	%eax, %edi
.LEHB13:
	call	sendto@PLT
	shrq	$63, %rax
	testb	%al, %al
	je	.L49
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
.L57:
	endbr64
	movq	%rax, %rbx
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L51
.L58:
	endbr64
	movq	%rax, %rbx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7ChannelD1Ev
	jmp	.L51
.L60:
	endbr64
	movq	%rax, %rbx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L54
.L59:
	endbr64
	movq	%rax, %rbx
.L54:
	leaq	-1661(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L51
.L56:
	endbr64
	movq	%rax, %rbx
.L51:
	leaq	-1616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7ChannelD1Ev
	leaq	-1456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3IrcD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
	.cfi_endproc
.LFE1529:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1529-.LLSDACSB1529
.LLSDACSB1529:
	.uleb128 .LEHB5-.LFB1529
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1529
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L56-.LFB1529
	.uleb128 0
	.uleb128 .LEHB7-.LFB1529
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L57-.LFB1529
	.uleb128 0
	.uleb128 .LEHB8-.LFB1529
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L56-.LFB1529
	.uleb128 0
	.uleb128 .LEHB9-.LFB1529
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L58-.LFB1529
	.uleb128 0
	.uleb128 .LEHB10-.LFB1529
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L56-.LFB1529
	.uleb128 0
	.uleb128 .LEHB11-.LFB1529
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L59-.LFB1529
	.uleb128 0
	.uleb128 .LEHB12-.LFB1529
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L60-.LFB1529
	.uleb128 0
	.uleb128 .LEHB13-.LFB1529
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L56-.LFB1529
	.uleb128 0
	.uleb128 .LEHB14-.LFB1529
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE1529:
	.text
	.size	main, .-main
	.section	.text._ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,"axG",@progbits,_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,comdat
	.weak	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.type	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, @function
_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_:
.LFB1793:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	cmpq	%rax, %rbx
	jne	.L62
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE7compareEPKcS2_m
	testl	%eax, %eax
	jne	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1793:
	.size	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, .-_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB1794:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1794:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2058:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L69
	cmpl	$65535, -8(%rbp)
	jne	.L69
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L69:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2058:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2059:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2059:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
