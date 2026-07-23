global ft_write

extern __errno_location

section .text
ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	js handle_error
	ret

handle_error:
	neg rax
	push rax
	call __errno_location
	pop rdi
	mov [rax], edi
	mov rax, -1
	ret
