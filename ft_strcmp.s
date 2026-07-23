global ft_strcmp

section .text
ft_strcmp:
	mov rcx, 0

loop_sec:
	movzx rax, byte [rdi + rcx]
	movzx rdx, byte [rsi + rcx]
	cmp al, 0
	je end
	cmp al, dl
	jne end
	inc rcx
	jmp loop_sec

end:
	sub rax, rdx
	ret
