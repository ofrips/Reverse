; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.60610.1 

	TITLE	D:\Technion\rev4\homeworks\hw1\vs\main\main\Source.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

EXTRN	__imp__getchar:PROC
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	@__security_check_cookie@4:PROC
$SG4294967291 DB 'A st', 00H
	ORG $+3
$SG4294967290 DB '%s', 0aH, 00H
$SG4294967289 DB 'A string hjdhkjdhkdjhdkjhdkjhd dkjhdkhdkjdhkdjhdkjhdkj', 00H
	ORG $+1
$SG4294967288 DB '%d', 0aH, 00H
$SG4294967287 DB '%s', 0aH, 00H
$SG4294967286 DB '%d', 0aH, 00H
$SG4294967285 DB '%d', 0aH, 00H
CONST	ENDS
PUBLIC	_main
PUBLIC	?q5@@YAHXZ					; q5
PUBLIC	?q4@@YAHXZ					; q4
PUBLIC	?q3@@YAHXZ					; q3
PUBLIC	?q2@@YAHXZ					; q2
PUBLIC	?q1@@YAHXZ					; q1
EXTRN	_memset:PROC
EXTRN	___security_cookie:DWORD
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT ?q1@@YAHXZ
_TEXT	SEGMENT
_str$ = -204						; size = 200
__$ArrayPad$ = -4					; size = 4
?q1@@YAHXZ PROC						; q1, COMDAT

; 16   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 17   : 	char str[200]={0};

	mov	BYTE PTR _str$[ebp], 0
	push	199					; 000000c7H
	push	0
	lea	eax, DWORD PTR _str$[ebp+1]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 18   : 
; 19   : 	TWONOPS

	npad	1
	npad	1

; 20   : 	strcpy(str, "A st");

	mov	ecx, DWORD PTR $SG4294967291
	mov	DWORD PTR _str$[ebp], ecx
	mov	dl, BYTE PTR $SG4294967291+4
	mov	BYTE PTR _str$[ebp+4], dl

; 21   : 	TWONOPS

	npad	1
	npad	1

; 22   : 
; 23   : 	printf("%s\n", str); // Protects against removal of strcpy by the optimizer, but not part of your exercise

	lea	eax, DWORD PTR _str$[ebp]
	push	eax
	push	OFFSET $SG4294967290
	call	DWORD PTR __imp__printf
	add	esp, 8

; 24   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?q1@@YAHXZ ENDP						; q1
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT ?q2@@YAHXZ
_TEXT	SEGMENT
_rc$ = -228						; size = 4
tv71 = -224						; size = 4
tv93 = -220						; size = 4
tv76 = -216						; size = 4
tv78 = -212						; size = 4
tv81 = -206						; size = 1
tv88 = -205						; size = 1
_str$ = -204						; size = 200
__$ArrayPad$ = -4					; size = 4
?q2@@YAHXZ PROC						; q2, COMDAT

; 27   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 28   : 	char str[200]={0};

	mov	BYTE PTR _str$[ebp], 0
	push	199					; 000000c7H
	push	0
	lea	eax, DWORD PTR _str$[ebp+1]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 29   : 	int rc;
; 30   : 
; 31   : 	gets(str); // Seeting str in an opimizer-safe way, but not part of your exercise

	lea	ecx, DWORD PTR _str$[ebp]
	push	ecx
	call	DWORD PTR __imp__gets
	add	esp, 4

; 32   : 
; 33   : 	TWONOPS

	npad	1
	npad	1

; 34   : 	rc=strcmp(str, "A string hjdhkjdhkdjhdkjhdkjhd dkjhdkhdkjdhkdjhdkjhdkj");

	mov	DWORD PTR tv78[ebp], OFFSET $SG4294967289
	lea	edx, DWORD PTR _str$[ebp]
	mov	DWORD PTR tv76[ebp], edx
$LL3@q2:
	mov	eax, DWORD PTR tv76[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR tv81[ebp], cl
	mov	edx, DWORD PTR tv78[ebp]
	cmp	cl, BYTE PTR [edx]
	jne	SHORT $LN4@q2
	cmp	BYTE PTR tv81[ebp], 0
	je	SHORT $LN5@q2
	mov	eax, DWORD PTR tv76[ebp]
	mov	cl, BYTE PTR [eax+1]
	mov	BYTE PTR tv88[ebp], cl
	mov	edx, DWORD PTR tv78[ebp]
	cmp	cl, BYTE PTR [edx+1]
	jne	SHORT $LN4@q2
	add	DWORD PTR tv76[ebp], 2
	add	DWORD PTR tv78[ebp], 2
	cmp	BYTE PTR tv88[ebp], 0
	jne	SHORT $LL3@q2
$LN5@q2:
	mov	DWORD PTR tv93[ebp], 0
	jmp	SHORT $LN6@q2
$LN4@q2:
	sbb	eax, eax
	or	eax, 1
	mov	DWORD PTR tv93[ebp], eax
$LN6@q2:
	mov	ecx, DWORD PTR tv93[ebp]
	mov	DWORD PTR tv71[ebp], ecx
	mov	edx, DWORD PTR tv71[ebp]
	mov	DWORD PTR _rc$[ebp], edx

; 35   : 	TWONOPS

	npad	1
	npad	1

; 36   : 
; 37   : 	printf("%d\n", rc); // Protects against removal of strcmp by the optimizer, but not part of your exercise

	mov	eax, DWORD PTR _rc$[ebp]
	push	eax
	push	OFFSET $SG4294967288
	call	DWORD PTR __imp__printf
	add	esp, 8

; 38   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?q2@@YAHXZ ENDP						; q2
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT ?q3@@YAHXZ
_TEXT	SEGMENT
_str$ = -404						; size = 200
_src$ = -204						; size = 200
__$ArrayPad$ = -4					; size = 4
?q3@@YAHXZ PROC						; q3, COMDAT

; 43   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 404				; 00000194H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	esi
	push	edi

; 44   : 	char str[200]={0};

	mov	BYTE PTR _str$[ebp], 0
	push	199					; 000000c7H
	push	0
	lea	eax, DWORD PTR _str$[ebp+1]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 45   : 	char src[200]={0};

	mov	BYTE PTR _src$[ebp], 0
	push	199					; 000000c7H
	push	0
	lea	ecx, DWORD PTR _src$[ebp+1]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH

; 46   : 
; 47   : 	gets(src); // Seeting str in an opimizer-safe way, but not part of your exercise

	lea	edx, DWORD PTR _src$[ebp]
	push	edx
	call	DWORD PTR __imp__gets
	add	esp, 4

; 48   : 
; 49   : 	TWONOPS

	npad	1
	npad	1

; 50   : 	memcpy(str, src, 200);

	mov	ecx, 50					; 00000032H
	lea	esi, DWORD PTR _src$[ebp]
	lea	edi, DWORD PTR _str$[ebp]
	rep movsd

; 51   : 	TWONOPS

	npad	1
	npad	1

; 52   : 
; 53   : 	printf("%s\n", str); // Protects against removal of strcpy by the optimizer, but not part of your exercise

	lea	eax, DWORD PTR _str$[ebp]
	push	eax
	push	OFFSET $SG4294967287
	call	DWORD PTR __imp__printf
	add	esp, 8

; 54   : }

	pop	edi
	pop	esi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?q3@@YAHXZ ENDP						; q3
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT ?q4@@YAHXZ
_TEXT	SEGMENT
_rc$ = -8						; size = 4
_i$ = -4						; size = 4
?q4@@YAHXZ PROC						; q4, COMDAT

; 59   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 60   :     int i; 
; 61   : 	int rc=0;

	mov	DWORD PTR _rc$[ebp], 0

; 62   : 
; 63   : 	TWONOPS

	npad	1
	npad	1

; 64   : 	for(i=0; i<100; i++)

	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@q4
$LN2@q4:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@q4:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	SHORT $LN1@q4

; 65   : 		rc += i;

	mov	ecx, DWORD PTR _rc$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR _rc$[ebp], ecx
	jmp	SHORT $LN2@q4
$LN1@q4:

; 66   : 	TWONOPS

	npad	1
	npad	1

; 67   : 
; 68   : 	printf("%d\n", rc); // Protects against removal of strlen by the optimizer, but not part of your exercise

	mov	edx, DWORD PTR _rc$[ebp]
	push	edx
	push	OFFSET $SG4294967286
	call	DWORD PTR __imp__printf
	add	esp, 8

; 69   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?q4@@YAHXZ ENDP						; q4
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT ?q5@@YAHXZ
_TEXT	SEGMENT
_i$ = -12						; size = 4
tv65 = -8						; size = 4
_rc$ = -4						; size = 4
?q5@@YAHXZ PROC						; q5, COMDAT

; 73   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 74   :     int i; 
; 75   : 	int rc=0;

	mov	DWORD PTR _rc$[ebp], 0

; 76   : 
; 77   : 	i=getchar();

	call	DWORD PTR __imp__getchar
	mov	DWORD PTR _i$[ebp], eax

; 78   : 
; 79   : 	TWONOPS

	npad	1
	npad	1

; 80   : 	switch (i)

	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR tv65[ebp], eax
	mov	ecx, DWORD PTR tv65[ebp]
	sub	ecx, 48					; 00000030H
	mov	DWORD PTR tv65[ebp], ecx
	cmp	DWORD PTR tv65[ebp], 69			; 00000045H
	ja	SHORT $LN1@q5
	mov	edx, DWORD PTR tv65[ebp]
	movzx	eax, BYTE PTR $LN18@q5[edx]
	jmp	DWORD PTR $LN19@q5[eax*4]
$LN13@q5:

; 81   : 	{
; 82   : 	case 'A':
; 83   : 		rc=1;

	mov	DWORD PTR _rc$[ebp], 1

; 84   : 		break;

	jmp	SHORT $LN14@q5
$LN12@q5:

; 85   : 	case 'B':
; 86   : 		rc=9;

	mov	DWORD PTR _rc$[ebp], 9

; 87   : 		break;

	jmp	SHORT $LN14@q5
$LN11@q5:

; 88   : 	case 'C':
; 89   : 		rc=8;

	mov	DWORD PTR _rc$[ebp], 8

; 90   : 		break;

	jmp	SHORT $LN14@q5
$LN10@q5:

; 91   : 	case 'E':
; 92   : 		rc=7;

	mov	DWORD PTR _rc$[ebp], 7

; 93   : 		break;

	jmp	SHORT $LN14@q5
$LN9@q5:

; 94   : 	case 'G':
; 95   : 		rc=6;

	mov	DWORD PTR _rc$[ebp], 6

; 96   : 		break;

	jmp	SHORT $LN14@q5
$LN8@q5:

; 97   : 	case 'D':
; 98   : 		rc=5;

	mov	DWORD PTR _rc$[ebp], 5

; 99   : 		break;

	jmp	SHORT $LN14@q5
$LN7@q5:

; 100  : 	case 'a':
; 101  : 		rc=4;

	mov	DWORD PTR _rc$[ebp], 4

; 102  : 		break;

	jmp	SHORT $LN14@q5
$LN6@q5:

; 103  : 	case 'k':
; 104  : 		rc=11;

	mov	DWORD PTR _rc$[ebp], 11			; 0000000bH

; 105  : 		break;

	jmp	SHORT $LN14@q5
$LN5@q5:

; 106  : 	case '0':
; 107  : 		rc=9;

	mov	DWORD PTR _rc$[ebp], 9

; 108  : 		break;

	jmp	SHORT $LN14@q5
$LN4@q5:

; 109  : 	case '2':
; 110  : 		rc=9;

	mov	DWORD PTR _rc$[ebp], 9

; 111  : 		break;

	jmp	SHORT $LN14@q5
$LN3@q5:

; 112  : 	case 'u':
; 113  : 		rc=9;

	mov	DWORD PTR _rc$[ebp], 9

; 114  : 		break;

	jmp	SHORT $LN14@q5
$LN2@q5:

; 115  : 	case 'Z':
; 116  : 		rc=2;

	mov	DWORD PTR _rc$[ebp], 2

; 117  : 		break;

	jmp	SHORT $LN14@q5
$LN1@q5:

; 118  : 	default:
; 119  : 		rc=30;

	mov	DWORD PTR _rc$[ebp], 30			; 0000001eH
$LN14@q5:

; 120  : 		break;
; 121  : 	}
; 122  : 	TWONOPS

	npad	1
	npad	1

; 123  : 
; 124  : 	printf("%d\n", rc); // Protects against removal of strlen by the optimizer, but not part of your exercise

	mov	ecx, DWORD PTR _rc$[ebp]
	push	ecx
	push	OFFSET $SG4294967285
	call	DWORD PTR __imp__printf
	add	esp, 8

; 125  : }

	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN19@q5:
	DD	$LN5@q5
	DD	$LN4@q5
	DD	$LN13@q5
	DD	$LN12@q5
	DD	$LN11@q5
	DD	$LN8@q5
	DD	$LN10@q5
	DD	$LN9@q5
	DD	$LN2@q5
	DD	$LN7@q5
	DD	$LN6@q5
	DD	$LN3@q5
	DD	$LN1@q5
$LN18@q5:
	DB	0
	DB	12					; 0000000cH
	DB	1
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	2
	DB	3
	DB	4
	DB	5
	DB	6
	DB	12					; 0000000cH
	DB	7
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	8
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	9
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	10					; 0000000aH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	12					; 0000000cH
	DB	11					; 0000000bH
?q5@@YAHXZ ENDP						; q5
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\technion\rev4\homeworks\hw1\vs\main\main\source.cpp
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 127  : int main() {

	push	ebp
	mov	ebp, esp

; 128  : 		q1();

	call	?q1@@YAHXZ				; q1

; 129  : 		q2();

	call	?q2@@YAHXZ				; q2

; 130  : 		q3();

	call	?q3@@YAHXZ				; q3

; 131  : 		q4();

	call	?q4@@YAHXZ				; q4

; 132  : 		q5();

	call	?q5@@YAHXZ				; q5

; 133  : }

	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END