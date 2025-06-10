section .data
	newline db 10

section .bss
	result resb 1

section .text
	global _start

_start:
	mov al,5
	mov ah,4
	sub al , ah

	;convert to ascii
	add al, '0'

	;move to result
	mov [result],al

	;print result
	mov eax,4
	mov ebx,1
	mov ecx,result
	mov edx,1
	int 0x80

	;print newline

	mov eax,4
	mov ebx,1
	mov ecx,newline
	mov edx,1
	int 0x80


	;exit process

	mov eax,1
	int 0x80


