section .data
	msg db "Example",0
	len equ $ - msg
	newline db 10

section .bss
	resultMsg resb 10

section .text
	global _start


_start:
	mov esi , msg
	add esi , len - 1

	;clear counter 
	xor ecx , ecx
	mov ecx , len
	dec ecx
	
	mov edi, resultMsg ; destination buffer pointer
	
	loop_count:	
	
		cmp ecx , 0
		jl done
		
		mov al , [esi]
		mov [edi] , al
		inc edi
		dec esi
		dec ecx
		jmp loop_count
		
	done:
		;print result message
		mov eax,4
		mov ebx,1
		mov ecx,resultMsg
		mov edx,10
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
	
