global ft_strcpy

ft_strcpy:
    push rbp
    mov rbp,rsp

    push rax

.loop:
    mov bl,byte [rdx]
    mov byte [rax],bl

    test bl,bl
    jz .end

    inc rdx
    inc rax

    jmp .loop

.end:

    pop rax

    mov rsp,rbp
    pop rbp

    ret
