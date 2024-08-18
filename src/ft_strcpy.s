section .text
    global ft_strcpy

ft_strcpy:
    push rbp
    mov rbp, rsp

.loop:
    mov bl, byte [rsi]
    mov byte [rdi], bl

    test bl, bl
    jz .end

    inc rdi
    inc rsi

    jmp .loop

.end:

    mov rsp, rbp
    pop rbp

    ret
