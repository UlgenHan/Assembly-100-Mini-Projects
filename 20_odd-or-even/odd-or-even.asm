section .data
	odd_msg db "Odd",10
	odd_msg_len equ $ - odd_msg
	even_msg db "Even",10
	even_msg_len equ $ - even_msg


section .text
	global _start

_start:
	mov eax , 5
	xor ebx , ebx ; clear ebx

	mov ebx,0x0001 

	and ebx,eax
	
	cmp bl,0
	je _even
	
	mov eax,4
	mov ebx,1
	mov ecx,odd_msg
	mov edx,odd_msg_len
	int 0x80
	
	_exit:
	mov eax,1
	xor ebx,ebx
	int 0x80


_even:
	mov eax,4
	mov ebx,1
	mov ecx,even_msg
	mov edx,even_msg_len
	int 0x80
	jmp _exit
	
	
