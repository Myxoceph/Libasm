global copy_one_char

section .text
copy_one_char:
	mov al, [rsi]
	mov [rdi], al
	mov rax, [rdi]
	ret
