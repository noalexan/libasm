global ft_strlen

ft_strlen:
    push rbp
    mov rbp,rsp

    mov rcx,0x00

.loop:
    mov bl, byte [rax] ; Load next byte

    test bl,bl ; Jump to end if end of string
    jz .end

    inc rax ; Move pointer to next byte
    inc rcx ; Increment len of string
    jmp .loop

.end:
    mov rsp,rbp
    pop rbp

    mov rax,rcx

    ret
