section .data
	newline db 10

section .bss
	result resb 10
	
section .text
	global _start

_start:
	
	mov al,5
	xor ah,ah ; clear ah register

	mov bl,1
	
	;result will be stored at AX
	mul bl
	
	;convert to ascii
	add ax,'0'

	;move AX to 
	mov [result],ax

	;print result
	mov eax,4
	mov ebx,1
	mov ecx,result,
	mov edx,10
	int 0x80
	;print newline
	
	mov eax,4
	mov ebx,1
	mov ecx,newline,
	mov edx,1
	int 0x80
	;exit process

	mov eax,1
	int 0x80
	

	

