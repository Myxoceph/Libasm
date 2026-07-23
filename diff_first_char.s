global diff_first_char

section .text
diff_first_char:
	movzx rax, byte [rdi]
	movzx rdx, byte [rsi]
	sub rax, rdx
	ret
