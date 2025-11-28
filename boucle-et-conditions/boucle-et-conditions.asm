section .data
    msg_greater db '    est plus grand que 15 !', 0Ah
    len_msg_greater equ $ - msg_greater
    msg_equal db 'RAX est bien égal à   ', 0Ah
    len_msg_equal equ $ - msg_equal
    msg_smarter db '    est plus petit que 15', 0Ah
    len_msg_smarter equ $ - msg_smarter

section .text
    global _start

_start:

    mov rax, 0
    mov rcx, 5

boucle:
    add rax, rcx
    loop boucle

    cmp rax, 15
    je equal
    jg greater
    jl smaller

equal:

    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'
    mov [msg_equal + 22], al
    mov [msg_equal + 23], dl
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_equal
    mov rdx, len_msg_equal
    syscall
    jmp exit

smaller:
    
    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'
    mov [msg_smarter + 1], al
    mov [msg_smarter+ 2], dl
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_smarter
    mov rdx, len_msg_smarter
    syscall
    jmp exit

greater:
    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'
    mov [msg_greater + 1], al
    mov [msg_greater + 2], dl
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_greater
    mov rdx, len_msg_greater
    syscall

exit:
    mov rax, 60
    mov rdi, 0
    syscall