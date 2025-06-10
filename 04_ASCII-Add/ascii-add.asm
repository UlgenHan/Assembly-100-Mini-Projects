section .data
	newline db 10

section .bss
	buffer resb 1
	

section .text
	global _start

_start:
	;Convert char to number
	mov eax, '3'
	sub eax,'0'

	mov ebx, '5'
	sub eax,'0'
	
	;sum of two number
	add eax,ebx	
	
	;convert number to char
	add eax,'0'
	mov [buffer],eax
	

	;print number
	mov eax,4
	mov ebx,1
	mov ecx,buffer
	mov edx,1
	int 0x80

	;print number
	mov eax,4
	mov ebx,1
	mov ecx,newline
	mov edx,1
	int 0x80


	

	;exit process
	mov eax,1
	int 0x80


	

