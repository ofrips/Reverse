	.file	"ex1.c"
	.intel_syntax noprefix
	.text
	.globl	_q1
	.def	_q1;	.scl	2;	.type	32;	.endef
_q1:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	ebx
	sub	esp, 224
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	lea	ebx, [ebp-208]
	mov	al, 0
	mov	edx, 200
	mov	edi, ebx
	mov	ecx, edx
	rep stosb
/APP
 # 19 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	lea	eax, [ebp-208]
	mov	DWORD PTR [eax], 1953701953
	mov	BYTE PTR [eax+4], 0
/APP
 # 21 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	lea	eax, [ebp-208]
	mov	DWORD PTR [esp], eax
	call	_puts
	add	esp, 224
	pop	ebx
	.cfi_restore 3
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "A string hjdhkjdhkdjhdkjhdkjhd dkjhdkhdkjdhkdjhdkjhdkj\0"
LC1:
	.ascii "%d\12\0"
	.text
	.globl	_q2
	.def	_q2;	.scl	2;	.type	32;	.endef
_q2:
LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	ebx
	sub	esp, 224
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	lea	ebx, [ebp-212]
	mov	al, 0
	mov	edx, 200
	mov	edi, ebx
	mov	ecx, edx
	rep stosb
	lea	eax, [ebp-212]
	mov	DWORD PTR [esp], eax
	call	_gets
/APP
 # 33 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	lea	eax, [ebp-212]
	mov	DWORD PTR [esp], eax
	call	_strcmp
	mov	DWORD PTR [ebp-12], eax
/APP
 # 35 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	add	esp, 224
	pop	ebx
	.cfi_restore 3
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_q3
	.def	_q3;	.scl	2;	.type	32;	.endef
_q3:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 428
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	lea	ebx, [ebp-224]
	mov	al, 0
	mov	edx, 200
	mov	edi, ebx
	mov	ecx, edx
	rep stosb
	lea	ebx, [ebp-424]
	mov	al, 0
	mov	edx, 200
	mov	edi, ebx
	mov	ecx, edx
	rep stosb
	lea	eax, [ebp-424]
	mov	DWORD PTR [esp], eax
	call	_gets
/APP
 # 49 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	lea	edx, [ebp-224]
	lea	ebx, [ebp-424]
	mov	eax, 50
	mov	edi, edx
	mov	esi, ebx
	mov	ecx, eax
	rep movsd
/APP
 # 51 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	lea	eax, [ebp-224]
	mov	DWORD PTR [esp], eax
	call	_puts
	add	esp, 428
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_q4
	.def	_q4;	.scl	2;	.type	32;	.endef
_q4:
LFB9:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	DWORD PTR [ebp-16], 0
/APP
 # 63 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	DWORD PTR [ebp-12], 0
	jmp	L5
L6:
	mov	eax, DWORD PTR [ebp-12]
	add	DWORD PTR [ebp-16], eax
	inc	DWORD PTR [ebp-12]
L5:
	cmp	DWORD PTR [ebp-12], 99
	jle	L6
/APP
 # 66 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_q5
	.def	_q5;	.scl	2;	.type	32;	.endef
_q5:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	DWORD PTR [ebp-12], 0
	call	_getchar
	mov	DWORD PTR [ebp-16], eax
/APP
 # 79 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	eax, DWORD PTR [ebp-16]
	sub	eax, 48
	cmp	eax, 69
	ja	L8
	mov	eax, DWORD PTR L21[0+eax*4]
	jmp	eax
	.section .rdata,"dr"
	.align 4
L21:
	.long	L9
	.long	L8
	.long	L10
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L11
	.long	L12
	.long	L13
	.long	L14
	.long	L15
	.long	L8
	.long	L16
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L17
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L18
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L19
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L8
	.long	L20
	.text
L11:
	mov	DWORD PTR [ebp-12], 1
	jmp	L22
L12:
	mov	DWORD PTR [ebp-12], 9
	jmp	L22
L13:
	mov	DWORD PTR [ebp-12], 8
	jmp	L22
L15:
	mov	DWORD PTR [ebp-12], 7
	jmp	L22
L16:
	mov	DWORD PTR [ebp-12], 6
	jmp	L22
L14:
	mov	DWORD PTR [ebp-12], 5
	jmp	L22
L18:
	mov	DWORD PTR [ebp-12], 4
	jmp	L22
L19:
	mov	DWORD PTR [ebp-12], 11
	jmp	L22
L9:
	mov	DWORD PTR [ebp-12], 9
	jmp	L22
L10:
	mov	DWORD PTR [ebp-12], 9
	jmp	L22
L20:
	mov	DWORD PTR [ebp-12], 9
	jmp	L22
L17:
	mov	DWORD PTR [ebp-12], 2
	jmp	L22
L8:
	mov	DWORD PTR [ebp-12], 30
	nop
L22:
/APP
 # 122 "ex1.c" 1
	nop
	nop
 # 0 "" 2
/NO_APP
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	call	___main
	call	_q1
	call	_q2
	call	_q3
	call	_q4
	call	_q5
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_gets;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
