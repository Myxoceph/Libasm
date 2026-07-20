global get_second_char

section .text
get_second_char:
	mov al, [rdi + 1]
	ret
