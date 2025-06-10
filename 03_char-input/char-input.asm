section .data
	msg db "Please enter a char :",10
	len equ $ - msg

section .bss
	buffer resb 1

section .text
	global _start


_start:
	;Message Output
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,len
	int 0x80

	;Reading data from stdin
	mov eax,3
	mov ebx,0
	mov ecx,buffer
	mov edx,1
	int 0x80
	
	;Echo buffer
	mov eax,4
	mov ebx,1
	mov ecx,buffer
	mov edx,1
	int 0x80

	;exit process
	mov eax,1
	int 0x80
