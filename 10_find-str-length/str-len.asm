section .data
	str1 db "Example", 0
	newline db 10

section .bss
	length resb 1

section .text
	global _start

_start:
	mov esi, str1 ; start of str
	xor ecx,ecx ; clear counter
	
count_loop:
	mov al,[esi]
	cmp al,0
	je done
	inc ecx
	inc esi
	jmp count_loop



done:
	mov [length],cl
	
	add byte [length],"0"

	;print result
	mov eax,4
	mov ebx,1
	mov ecx,length
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
	xor ebx,ebx
	int 0x80


