section .data
    message db 'Hello, World!', 0Dh, 0Ah, 0

section .bss
    bytesWritten resq 1

section .text
    extern GetStdHandle
    extern WriteConsoleA
    extern ExitProcess

    global main

main:
    sub rsp, 8      ; Выравнивание стека

    ; 1. Получаем дескриптор консоли
    mov rcx, -11     ; STD_OUTPUT_HANDLE
    call GetStdHandle

    cmp rax, -1     ; Проверяем на ошибку
    je quit

    mov rcx, rax    ; hConsoleOutput

    ; 2. Выводим строку
    mov rdx, message
    mov r8, 14      ; Длина строки
    mov r9, bytesWritten
    push 0          ; lpReserved
    call WriteConsoleA
    add rsp, 8    ; Очищаем стек

quit:
    ; 3. Завершаем процесс
    xor rcx, rcx
    call ExitProcess
