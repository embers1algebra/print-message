; main.asm

section .data
    message db 'Hello, World!', 0

section .text
    extern print_message

global _start

_start:
    ; Call the print_message function
    call print_message

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
