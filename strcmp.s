section .text

global _mystrcmp

_mystrcmp:
	loop:
		mov al, byte [rdi]
		mov bl, byte [rsi]
		cmp al , 0
		je getout ; jump if al is equle 0 the the label ghetout
		cmp bl, 0
		je getout
		cmp al, bl
		jne getout
		inc rdi
		inc rsi
		jmp loop
	getout:
		movzx rbx, bl
		movzx rax, al
		sub rax, rbx
		ret	
