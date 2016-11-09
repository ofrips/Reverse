	.file	"passwd.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "OK\0"
LC1:
	.ascii "Wrong ID\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	BYTE PTR [esp+47], 0
	mov	DWORD PTR [esp+26], 1835103337
	mov	DWORD PTR [esp+30], 1718579809
	mov	WORD PTR [esp+34], 26994
	mov	BYTE PTR [esp+36], 0
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], 11
	lea	eax, [esp+37]
	mov	DWORD PTR [esp], eax
	call	_fgets
	lea	eax, [esp+26]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+37]
	mov	DWORD PTR [esp], eax
	call	_strcmp
	test	eax, eax
	jne	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	mov	eax, 0
	jmp	L4
L2:
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
	mov	eax, 0
L4:
	leave
	ret
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
