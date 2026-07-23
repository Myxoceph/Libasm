global ft_strdup
extern ft_strlen
extern malloc
extern ft_strcpy

section .text
ft_strdup:
	push rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call malloc
	cmp rax, 0
	je error_handle
	mov rdi, rax
	pop rsi
	call ft_strcpy
	ret

error_handle:
	pop rdi
	mov rax, 0
	ret
