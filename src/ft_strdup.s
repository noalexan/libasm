section .text
    global ft_strdup
    extern ft_strlen
    extern ft_strcpy
    extern malloc

ft_strdup:
    push rbp
    mov rbp, rsp

    push rdi

    call ft_strlen

    mov rdi, rax

    call malloc

    pop rsi
    mov rdi, rax

    call ft_strcpy

    mov rsp, rbp
    pop rbp

    ret
