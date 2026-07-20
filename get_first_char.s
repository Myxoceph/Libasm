global get_first_char

section .text
get_first_char:
	mov al, [rdi]
	ret
