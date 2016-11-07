	.file	"crackme.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter Serial Key\0"
LC1:
	.ascii "%s\0"
	.align 4
LC2:
	.ascii "[-] Serial Key must be 9 chars long\0"
LC3:
	.ascii "[-] Wrong\0"
LC4:
	.ascii "[+] Good job ! \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB9:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 288
	call	___main
	mov	DWORD PTR [esp+284], 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+280], eax
	mov	eax, DWORD PTR [esp+280]
	mov	DWORD PTR [esp], eax
	call	_strlen
	cmp	eax, 9
	je	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	mov	eax, 0
	jmp	L7
L2:
	mov	DWORD PTR [esp+284], 0
	jmp	L4
L6:
	mov	eax, DWORD PTR [esp+284]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+280]
	add	eax, edx
	mov	al, BYTE PTR [eax]
	movsx	eax, al
	mov	ecx, DWORD PTR [esp+284]
	mov	edx, DWORD PTR [esp+280]
	add	edx, ecx
	mov	dl, BYTE PTR [edx]
	movsx	edx, dl
	add	edx, 2
	cmp	eax, edx
	je	L5
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_puts
	mov	eax, 0
	jmp	L7
L5:
	inc	DWORD PTR [esp+284]
L4:
	cmp	DWORD PTR [esp+284], 7
	jle	L6
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_puts
	mov	eax, 0
L7:
	leave
	ret

