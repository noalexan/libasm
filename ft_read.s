[bits 64]

section .text
    global ft_read

ft_read:
    mov rax, 0x00
    syscall
    ret
