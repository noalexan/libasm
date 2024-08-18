section .text
    global ft_strlen

ft_strlen:
    push rbp
    mov rbp, rsp

    xor rax, rax

.loop:
    mov bl, byte [rdi] ; Load next byte

    test bl, bl ; Jump to end if end of string
    jz .end

    inc rdi ; Move pointer to next byte
    inc rax ; Increment len of string
    jmp .loop

.end:
    mov rsp, rbp
    pop rbp

    ret
