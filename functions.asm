; functions.asm

section .text
    global print_message

print_message:
    ; Function to print a null-terminated string
    mov eax, 4        ; syscall: write
    mov ebx, 1        ; file descriptor: STDOUT
    mov ecx, message  ; pointer to the message
    mov edx, 13       ; length of the message
    int 0x80          ; make syscall

    ret
