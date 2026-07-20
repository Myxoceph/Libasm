global ft_strlen

section .text
ft_strlen:
	mov rcx, 0
	mov al, [rdi]

	cmp al, 0
	jne loop_sec

	mov rax, rcx
	ret

loop_sec:
	mov al, [rdi + rcx]
	cmp al, 0
	je end
	inc rcx
	jmp loop_sec

end:
	mov rax, rcx
	ret
