; macros.asm

%define newline 0xA   ; ASCII code for newline character

%macro print_newline 0
    ; Macro to print a newline character
    mov eax, 4        ; syscall: write
    mov ebx, 1        ; file descriptor: STDOUT
    mov ecx, newline  ; newline character
    mov edx, 1        ; length of the character
    int 0x80          ; make syscall
%endmacro
