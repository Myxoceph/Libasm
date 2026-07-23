global ft_strcpy

section .text
ft_strcpy:
	mov rcx, 0

loop_sec:
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	cmp al, 0
	je end
	inc rcx
	jmp loop_sec

end:
	mov rax, rdi
	ret
