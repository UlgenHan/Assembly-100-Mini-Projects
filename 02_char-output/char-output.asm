section .data
	char db 'A'


section .text
	global _start:

_start: 
	mov eax,4
	mov ebx,1
	mov ecx,char
	mov edx,1
	int 0x80

	mov eax,1
	int 0x80

