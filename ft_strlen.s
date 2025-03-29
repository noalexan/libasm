[bits 64]

section .text
    global ft_strlen

ft_strlen:
    xor rax, rax

.loop:
    mov bl, byte [rdi]
    test bl, bl
    jz .end

    inc rdi
    inc rax
    jmp .loop

.end:
    ret
