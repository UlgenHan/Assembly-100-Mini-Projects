section .data
	equal_message db "Equal",10
	equal_message_len equ $ - equal_message
	not_equal_message db "Not Equal",10
	not_equal_message_len equ $ - not_equal_message

section .text
	global _start

_start:
	mov eax,5;
	mov ebx , 5;

	cmp eax,ebx 
	je _bigger
	
	mov eax,4
	mov ebx,1
	mov ecx,not_equal_message
	mov edx,not_equal_message_len
	int 0x80
	
	_exit:
		mov eax,1
		xor ebx,ebx
		int 0x80



_bigger:
	
	mov eax,4
	mov ebx,1
	mov ecx,equal_message
	mov edx,equal_message_len
	int 0x80
	
	jmp _exit
	

	
