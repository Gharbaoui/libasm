section .text

global _mystrdup
extern _malloc
extern _mystrlen
extern _mystrcpy

_mystrdup:
	push rdi
	call _mystrlen
	add rax, 1
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je error
	pop rsi
	mov rdi, rax
	call _mystrcpy
	ret
	error:
	mov r9, 12
	mov [rax], r9
	mov rax, 0
	ret
