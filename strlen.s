section .text

global _mystrlen

_mystrlen:
	mov rax, 0
	strlen_next:
		cmp byte [rdi], 0 ; here i check if what rdi pointing is equel to 0
		jz ended ; if the above true we go to label ended
		inc rdi ; move rdx pointer to the next chararter
		inc rax ; add 1 to  register rax for calculting the length os sgtring
		jmp strlen_next
	ended:
		ret
