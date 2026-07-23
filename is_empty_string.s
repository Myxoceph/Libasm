global is_empty_string

section .text
is_empty_string:
	mov al, [rdi]

	cmp al, 0
	je string_is_empty

	mov rax, 0
	ret

string_is_empty:
	mov rax, 1
	ret
