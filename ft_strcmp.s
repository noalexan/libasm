[bits 64]

section .text
    global ft_strcmp

ft_strcmp:
    push rbp
    mov rbp, rsp

    xor rax, rax
    xor rbx, rbx

.loop:
    mov al, byte [rdi]
    mov bl, byte [rsi]

    sub rax, rbx
    jnz .end

    test bl, bl
    jz .end

    inc rdi
    inc rsi

    jmp .loop

.end:
    mov rsp, rbp
    pop rbp

    ret
