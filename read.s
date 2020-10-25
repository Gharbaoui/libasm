section .text
extern ___error
global _myread

_myread:
	mov rax, 0x2000003
	syscall
	jc error
	ret
	error:
		push rax
		call ___error
		pop rdx
		mov [rax], rdx
		mov rax, -1
		ret

