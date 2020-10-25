section .text

global _mywrite
extern ___error

_mywrite:
	mov rax, 0x2000004
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
