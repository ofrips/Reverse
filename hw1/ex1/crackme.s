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
	mov	DWORD PTR [esp], OFFSET FLAT:LC0	; puts the address of LC0 ascii string
	call	_puts ;prints is to the screen
	lea	eax, [esp+24] ; where to save the input from the user 
	mov	DWORD PTR [esp+4], eax ; push it to the stack
	mov	DWORD PTR [esp], OFFSET FLAT:LC1 ;push scanf string format to the stack
	call	_scanf ;read input from the user to the address esp+24
	lea	eax, [esp+24] ; put the address of the input string to eax
	mov	DWORD PTR [esp+280], eax ;put the address of the input string at esp+280
	mov	eax, DWORD PTR [esp+280] 
	mov	DWORD PTR [esp], eax ;push the address of the input array to the stack
	call	_strlen ;get the length of the input string in eax
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
	mov	eax, DWORD PTR [esp+284] ;put the the current index we are now checking in the input string
													  ; this is also used to count the times the following letter ascii value is bigger
													  ; in 2 from the previous one
	lea	edx, [eax+1] ; put index + 1
	mov	eax, DWORD PTR [esp+280]  ; put the adress of the input string in eax
	add	eax, edx ; put adress of the input +the index we are now checking
	mov	al, BYTE PTR [eax] 	; read to al the char in the index + 1 + esp+284
	movsx	eax, al	; sign extend (sign=0 in ascii values) al to eax
	mov	ecx, DWORD PTR [esp+284]	; do the same again, only for index + esp+284, and store in edx
	mov	edx, DWORD PTR [esp+280]
	add	edx, ecx
	mov	dl, BYTE PTR [edx]
	movsx	edx, dl
	add	edx, 2
	cmp	eax, edx ;see if the ascii value +2 of the char at index equals to the ascii value of the char at index+1
	je	L5 ;if equal, goto L%
	mov	DWORD PTR [esp], OFFSET FLAT:LC3 ;else, prints Wrong and exit
	call	_puts
	mov	eax, 0
	jmp	L7
L5:
	inc	DWORD PTR [esp+284] ; increase the index we are checking in 1
L4:
	cmp	DWORD PTR [esp+284], 7 ;check if we got 8 iteration where the following char ascii value is bigger at 2 from the privious one
	jle	L6 ; if not, iterates again at L6
	mov	DWORD PTR [esp], OFFSET FLAT:LC4 ; else, print good job and exit
	call	_puts
	mov	eax, 0
L7:
	leave
	ret

