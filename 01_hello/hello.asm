section .data 
	msg db "From Assembly , Hello World!",10;
	len equ $ - msg
section .text
	global _start

_start:
	mov eax,4 ; sys_write
	mov ebx,1; stdout
	mov ecx,msg
	mov edx,len
	int 0x80 ; interrupt

	mov eax,1 ; sys_exit process
	int 0x80
