global my_alloc

extern malloc

section .text
my_alloc:
	sub rsp, 8
	call malloc
	add rsp, 8
	ret
