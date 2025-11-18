section .data
    message db 'OK :    !', 0Ah     ; initialisation du message
    len_message equ $ - message     ; récupération de la longueur du message
    msg_error db 'ERREUR !', 0Ah    ; initialisation du message d'erreur
    len_msg_error equ $ - msg_error ; récupération de la longueur de msg_error

section .text
    global _start                   ; commence par le label '_start'

_start

    mov rax, 0                      ; pour être sûr que rax contient 0
    mov rcx, 7                      ; compteur qui commence à 7

loop:                               ; début de la boucle
    add rax, rcx                    ; ajoute rcx à rax
    loop loop                       ; si rcx !== 0 retour au label 'loop'

    cmp rax, 28                     ; compare rax à 28
    je equal                        ; si rax === 28, saut au label 'equal'

equal:
    mov rbx, 10                     ; met le diviseur 10 dans rbx
    mov rdx, 0                      ; met 0 dans rdx pour éviter de diviser un nombre énorme
    div rbx                         ; divise rdx:rax par rbx
    add al, '0'                     ; converti en caractère ASCII
    add dl, '0'
    mov [message + 5], al           ; met les caractères dans le message
    mov [message + 6], dl

    mov rax, 1                      ; appel systeme 'print'
    mov rdi, 1                      ; appel systeme stdout
    mov rsi, message                ; référence à 'message' défini plus haut
    mov rdx, len_message            ; longueur du message
    syscall
    jmp exit

non_equal:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_error
    mov rdx, len_msg_error
    syscall

exit:
    mov rax, 60                     ; sortie du programme
    mov rdi, 0
    syscall
