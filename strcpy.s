section .text

global _mystrcpy

_mystrcpy:
	mov rax, rdi ; puttinf rdi in rax register (r for register)
	loop:
		mov r10, [rsi] 		; move the value contained in what rsi points to to r10 (r)
		cmp r10, 0 			; compair if r10 is equel to 0
		mov [rdi], r10 		; move what in r10 to what rdi points to
		jz ended         	; if r10 == 0 jump to label ended
		inc rsi    			; incremmnt rsi pointer
		inc rdi 			; increment rdi pointer
		jmp loop
	ended:
		ret					; return the value conatined in rax
